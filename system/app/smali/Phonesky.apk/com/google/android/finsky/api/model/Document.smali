.class public Lcom/google/android/finsky/api/model/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppSubscriptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final mCookie:Ljava/lang/String;

.field private final mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

.field private mImageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSubscriptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1079
    new-instance v0, Lcom/google/android/finsky/api/model/Document$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/Document$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/Document;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V
    .registers 4
    .parameter "document"
    .parameter "cookie"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 75
    if-eqz p2, :cond_a

    .line 76
    iput-object p2, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    .line 83
    :goto_9
    return-void

    .line 80
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    goto :goto_9

    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static convertToBucket(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/api/model/Bucket;
    .registers 3
    .parameter "doc"

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/finsky/api/model/Bucket;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    return-object v0
.end method

.method private getImageTypeMap()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    if-nez v3, :cond_4f

    .line 574
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    .line 575
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 576
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v2

    .line 577
    .local v2, imageType:I
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 578
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_3f
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 583
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .end local v2           #imageType:I
    :cond_4f
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    return-object v3
.end method


# virtual methods
.method public canUseAsPartialDocument()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1039
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    .line 1055
    :cond_9
    :goto_9
    return v0

    .line 1045
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1050
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetailsReusable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1055
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1070
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .registers 2

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAntennaInfo()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;
    .registers 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v0

    return-object v0
.end method

.method public getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 2

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAppPermissionsList()Ljava/util/List;
    .registers 3
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
    .line 721
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->hasAppDetails()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 723
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v0

    .line 725
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getAppSubscriptionsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasAppSubscriptions()Z

    move-result v2

    if-nez v2, :cond_8

    .line 998
    const/4 v2, 0x0

    .line 1007
    :goto_7
    return-object v2

    .line 1001
    :cond_8
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mAppSubscriptionsList:Ljava/util/List;

    if-nez v2, :cond_36

    .line 1002
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mAppSubscriptionsList:Ljava/util/List;

    .line 1003
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 1004
    .local v0, child:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mAppSubscriptionsList:Ljava/util/List;

    new-instance v3, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1007
    .end local v0           #child:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_36
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mAppSubscriptionsList:Ljava/util/List;

    goto :goto_7
.end method

.method public getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 2

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAvailabilityRestriction()I
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAvailability()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRestriction()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public getAvailableOffers()Ljava/util/List;
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
    .line 732
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getOfferList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackend()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendId()I

    move-result v0

    return v0
.end method

.method public getBackendDocId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendDocid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyOfWorkBrowseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 237
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 238
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 240
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getBodyOfWorkHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 225
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 226
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 228
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getBodyOfWorkListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 249
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionBodyOfWork()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 250
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 252
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 2

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getCensoring()I
    .registers 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getCensoring()I

    move-result v0

    return v0
.end method

.method public getChildAt(I)Lcom/google/android/finsky/api/model/Document;
    .registers 5
    .parameter "index"

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChild(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getContainerAnnotation()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreContentHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 260
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 261
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 263
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getCoreContentListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 284
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCoreContent()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 285
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getCreator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatorBadges()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForCreatorList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCreditsList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    .line 703
    .local v0, details:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getCreditList()Ljava/util/List;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getCrossSellBrowseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 386
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 387
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 388
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 390
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getCrossSellHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 364
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 365
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 367
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getCrossSellListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 374
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 375
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 376
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 378
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getDealOfTheDayInfo()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getOriginalDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 318
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    .line 320
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getDocId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentType()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocType()I

    move-result v0

    return v0
.end method

.method public getFirstCreatorBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .registers 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForCreator(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v0

    return-object v0
.end method

.method public getFirstItemBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .registers 3

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForDoc(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedPrice(I)Ljava/lang/String;
    .registers 4
    .parameter "offerType"

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    .line 776
    .local v0, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 777
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v1

    .line 780
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getImages(I)Ljava/util/List;
    .registers 4
    .parameter "imageType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/Document;->getImageTypeMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getItemBadges()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForDocList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLinkAnnotation()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    .registers 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasLinkAnnotation()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 339
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    move-result-object v0

    .line 341
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;
    .registers 2

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getMagazineDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MagazineDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getMoreByBrowseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 445
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 446
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 448
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getMoreByHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 422
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 423
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 424
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 426
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getMoreByListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 434
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 435
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 437
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getMovieRentalTerms()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    .line 687
    .local v0, details:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getRentalTermList()Ljava/util/List;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getMovieTrailers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocDetails$Trailer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    .line 695
    .local v0, details:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getTrailerList()Ljava/util/List;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getNormalizedContentRating()I
    .registers 3

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 678
    .local v0, details:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-nez v0, :cond_8

    const/4 v1, -0x1

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getContentRating()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_7
.end method

.method public getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 5
    .parameter "offerType"

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 741
    .local v1, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v2

    if-ne v2, p1, :cond_8

    .line 745
    .end local v1           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getOfferNote()Ljava/lang/String;
    .registers 3

    .prologue
    .line 455
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 456
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasOfferNote()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 457
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getOfferNote()Ljava/lang/String;

    move-result-object v1

    .line 459
    :goto_12
    return-object v1

    :cond_13
    const-string v1, ""

    goto :goto_12
.end method

.method public getOriginalDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 3

    .prologue
    .line 858
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 860
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_13

    .line 861
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v1

    .line 863
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 466
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 467
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPrivacyPolicyUrl()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 468
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v1

    .line 470
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getRatingCount()J
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getRatingsCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRatingHistogram()[I
    .registers 6

    .prologue
    const/4 v3, 0x5

    .line 547
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v2

    if-nez v2, :cond_d

    .line 548
    new-array v1, v3, [I

    fill-array-data v1, :array_3e

    .line 555
    .local v1, histogram:[I
    :goto_c
    return-object v1

    .line 551
    .end local v1           #histogram:[I
    :cond_d
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    .line 552
    .local v0, agg:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    new-array v1, v3, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFiveStarRatings()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getFourStarRatings()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getThreeStarRatings()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getTwoStarRatings()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getOneStarRatings()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v1, v2

    .line 555
    .restart local v1       #histogram:[I
    goto :goto_c

    .line 548
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getReasonUniqueId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason()Z

    move-result v0

    if-nez v0, :cond_16

    .line 946
    :cond_14
    const/4 v0, 0x0

    .line 948
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getReason()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getRecommendationReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasReason()Z

    move-result v0

    if-nez v0, :cond_16

    .line 939
    :cond_14
    const/4 v0, 0x0

    .line 941
    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getReason()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Reason;->getBriefReason()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getRelatedBrowseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 181
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 182
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 184
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getRelatedDocTypeHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 203
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 204
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 206
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getRelatedDocTypeListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 214
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelatedDocType()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 215
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 217
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getRelatedHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 170
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 171
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 173
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getRelatedListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 192
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionRelated()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 193
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 195
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getReleaseType()I
    .registers 3

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseType(I)I

    move-result v0

    return v0
.end method

.method public getReviewsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getReviewsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 2

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getStarRating()F
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v0

    return v0
.end method

.method public getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;
    .registers 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SubscriptionDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getSubscriptionsList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasSubscriptions()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1017
    const/4 v2, 0x0

    .line 1026
    :goto_7
    return-object v2

    .line 1020
    :cond_8
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mSubscriptionsList:Ljava/util/List;

    if-nez v2, :cond_3a

    .line 1021
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mSubscriptionsList:Ljava/util/List;

    .line 1022
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSubscriptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 1023
    .local v0, child:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mSubscriptionsList:Ljava/util/List;

    new-instance v3, Lcom/google/android/finsky/api/model/Document;

    iget-object v4, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1026
    .end local v0           #child:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3a
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mSubscriptionsList:Ljava/util/List;

    goto :goto_7
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasSubtitle()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;
    .registers 2

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getTvSeasonDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    .registers 2

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getTvSeasonDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getVersionCode()I
    .registers 3

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 2

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$DocumentDetails;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getWarningMessage()Ljava/lang/CharSequence;
    .registers 7

    .prologue
    .line 879
    const-string v2, ""

    .line 880
    .local v2, sequence:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 881
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getWarningCount()I

    move-result v3

    .line 882
    .local v3, warningCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v3, :cond_42

    .line 883
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getWarning(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 885
    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_3f

    .line 886
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 889
    :cond_42
    invoke-static {v2}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method public getWhatsNew()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_f

    .line 513
    :cond_c
    const-string v0, ""

    .line 515
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/FastHtmlParser;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_e
.end method

.method public getYouTubeWatchUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 711
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendUrl()Ljava/lang/String;

    move-result-object v0

    .line 713
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasAntennaInfo()Z
    .registers 4

    .prologue
    .line 921
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 922
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasTemplate()Z

    move-result v2

    if-nez v2, :cond_e

    .line 923
    const/4 v2, 0x0

    .line 926
    :goto_d
    return v2

    .line 925
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v1

    .line 926
    .local v1, template:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna()Z

    move-result v2

    goto :goto_d
.end method

.method public hasAppSubscriptions()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 989
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocType()I

    move-result v1

    if-ne v1, v0, :cond_12

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildCount()I

    move-result v1

    if-lez v1, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasCensoring()Z
    .registers 3

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    .line 960
    .local v0, albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasCensoring()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public hasContainerAnnotation()Z
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v0

    return v0
.end method

.method public hasCreatorBadges()Z
    .registers 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForCreatorCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasCreatorRelatedContent()Z
    .registers 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 306
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 308
    const/4 v1, 0x1

    .line 310
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public hasCrossSellContent()Z
    .registers 3

    .prologue
    .line 397
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 398
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionCrossSell()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 399
    const/4 v1, 0x1

    .line 401
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hasDealOfTheDayInfo()Z
    .registers 2

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasDetails()Z
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetails()Z

    move-result v0

    return v0
.end method

.method public hasDocumentType()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocType()Z

    move-result v0

    return v0
.end method

.method public hasItemBadges()Z
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getBadgeForDocCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasLinkAnnotation()Z
    .registers 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 328
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasLink()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 329
    const/4 v1, 0x1

    .line 331
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hasMoreBy()Z
    .registers 3

    .prologue
    .line 409
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 410
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 411
    const/4 v1, 0x1

    .line 413
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hasPlusOneData()Z
    .registers 3

    .prologue
    .line 846
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    .line 847
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;
    if-eqz v0, :cond_13

    .line 848
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->hasPlusOneData()Z

    move-result v1

    .line 850
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public hasRating()Z
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAggregateRating()Z

    move-result v0

    return v0
.end method

.method public hasReleaseType()Z
    .registers 3

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    .line 973
    .local v0, albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->hasDetails()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseTypeCount()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public hasReviewHistogramData()Z
    .registers 7

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRatingHistogram()[I

    move-result-object v2

    .line 1060
    .local v2, histogram:[I
    move-object v0, v2

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_12

    aget v1, v0, v3

    .line 1061
    .local v1, count:I
    if-lez v1, :cond_f

    .line 1062
    const/4 v5, 0x1

    .line 1065
    .end local v1           #count:I
    :goto_e
    return v5

    .line 1060
    .restart local v1       #count:I
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1065
    .end local v1           #count:I
    :cond_12
    const/4 v5, 0x0

    goto :goto_e
.end method

.method public hasSample()Z
    .registers 5

    .prologue
    .line 763
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 764
    .local v1, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 765
    const/4 v2, 0x1

    .line 768
    .end local v1           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :goto_1e
    return v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public hasScreenshots()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 833
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    .line 835
    .local v0, imageList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    if-eq v1, v2, :cond_14

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public hasSubscriptions()Z
    .registers 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getSubscriptionCount()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hasVideoThumbnails()Z
    .registers 3

    .prologue
    .line 823
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    .line 825
    .local v0, videoThumbnailList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hasVideos()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 808
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    .line 814
    .local v0, videoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    move v1, v2

    goto :goto_1f
.end method

.method public hasWarningMessage()Z
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$Annotations;->getWarningCount()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isAvailableIfOwned()Z
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAvailability()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getAvailableIfOwned()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isInProgressSeason()Z
    .registers 4

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTvSeasonDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;

    move-result-object v0

    .line 668
    .local v0, seasonDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocType()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_22

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->hasExpectedEpisodeCount()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getEpisodeCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvSeasonDetails;->getExpectedEpisodeCount()I

    move-result v2

    if-eq v1, v2, :cond_22

    const/4 v1, 0x1

    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public needsCheckoutFlow(I)Z
    .registers 4
    .parameter "offerType"

    .prologue
    .line 787
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    .line 788
    .local v0, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v0, :cond_b

    .line 789
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v1

    .line 791
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public needsConfirmation(I)Z
    .registers 4
    .parameter "offerType"

    .prologue
    .line 800
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1097
    .local v0, sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 1100
    const-string v1, " v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1102
    :cond_29
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1076
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1077
    return-void
.end method
