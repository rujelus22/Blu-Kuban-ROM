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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1055
    new-instance v0, Lcom/google/android/finsky/api/model/Document$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/Document$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/Document;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V
    .registers 3
    .parameter "document"
    .parameter "cookie"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 75
    iput-object p2, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static convertToBucket(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/model/Bucket;
    .registers 3
    .parameter "doc"

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/finsky/model/Bucket;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

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
    .line 519
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    if-nez v3, :cond_4e

    .line 520
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    .line 521
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 522
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v2

    .line 523
    .local v2, imageType:I
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 524
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_3e
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 529
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .end local v2           #imageType:I
    :cond_4e
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mImageTypeMap:Ljava/util/Map;

    return-object v3
.end method

.method private isAppInstalled(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .registers 5
    .parameter "packageInfoCache"

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 757
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-nez v0, :cond_8

    .line 758
    const/4 v2, 0x0

    .line 762
    :goto_7
    return v2

    .line 761
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    goto :goto_7
.end method

.method private isSystemApp(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .registers 5
    .parameter "packageInfoCache"

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 771
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-nez v0, :cond_8

    .line 772
    const/4 v2, 0x0

    .line 776
    :goto_7
    return v2

    .line 775
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v2

    goto :goto_7
.end method

.method private offerTypeCheck(I)Z
    .registers 3
    .parameter "offerType"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAvailability()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOfferType()I

    move-result v0

    if-ne v0, p1, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public canLaunch(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .registers 7
    .parameter "packageInfoCache"

    .prologue
    const/4 v3, 0x0

    .line 797
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 798
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-nez v0, :cond_8

    .line 804
    :cond_7
    :goto_7
    return v3

    .line 802
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/finsky/utils/PackageInfoCache;->canLaunch(Ljava/lang/String;)Z

    move-result v1

    .line 803
    .local v1, canLaunch:Z
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/finsky/utils/PackageInfoCache;->isDisabledByUser(Ljava/lang/String;)Z

    move-result v2

    .line 804
    .local v2, isDisabledByUser:Z
    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public canRate(Lcom/google/android/finsky/local/AssetStore;)Z
    .registers 8
    .parameter "assetStore"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_18

    .line 452
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, packageName:Ljava/lang/String;
    invoke-interface {p1, v1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    .line 455
    .local v0, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    if-nez v0, :cond_19

    move v2, v3

    .line 462
    .end local v0           #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_18
    :goto_18
    return v2

    .line 460
    .restart local v0       #localAsset:Lcom/google/android/finsky/local/LocalAsset;
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_19
    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->isDownloadingOrInstalling()Z

    move-result v4

    if-nez v4, :cond_25

    invoke-interface {v0}, Lcom/google/android/finsky/local/LocalAsset;->isInstalled()Z

    move-result v4

    if-nez v4, :cond_18

    :cond_25
    move v2, v3

    goto :goto_18
.end method

.method public canUseAsPartialDocument()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    .line 1041
    :cond_9
    :goto_9
    return v0

    .line 1036
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1041
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 1046
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    .registers 2

    .prologue
    .line 550
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
    .line 980
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getSeriesAntenna()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SeriesAntenna;

    move-result-object v0

    return-object v0
.end method

.method public getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .registers 2

    .prologue
    .line 543
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
    .line 629
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

    .line 631
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v0

    .line 633
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 2

    .prologue
    .line 557
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
    .line 681
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
    .line 640
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getOfferList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackend()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendId()I

    move-result v0

    return v0
.end method

.method public getBackendDocId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendDocid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyOfWorkBrowseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 214
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionBodyOfWork()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 215
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 217
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getBodyOfWorkHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 202
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionBodyOfWork()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 203
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 205
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getBodyOfWorkListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 226
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionBodyOfWork()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 227
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionBodyOfWork()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 229
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    .registers 2

    .prologue
    .line 571
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
    .line 1001
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

.method public getContainerAnnotation()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreContentHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 237
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCoreContent()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 238
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 240
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getCoreContentListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 261
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCoreContent()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 262
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCoreContent()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 264
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getCreator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 409
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
    .line 951
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForCreatorList()Ljava/util/List;

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
    .line 610
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    .line 611
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
    .line 352
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 353
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCrossSell()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 354
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 356
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getCrossSellHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 330
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCrossSell()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 331
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 333
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getCrossSellListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 340
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 341
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCrossSell()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 342
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionCrossSell()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getDealOfTheDayInfo()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->getDealOfTheDay()Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 869
    const/4 v0, 0x0

    .line 870
    .local v0, bestOffer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v4

    if-ne v4, v5, :cond_37

    .line 871
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 872
    .local v2, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v3

    .line 873
    .local v3, offerType:I
    if-ne v3, v5, :cond_2a

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 874
    move-object v0, v2

    .line 893
    .end local v2           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v3           #offerType:I
    :cond_29
    :goto_29
    return-object v0

    .line 876
    .restart local v2       #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .restart local v3       #offerType:I
    :cond_2a
    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    if-nez v0, :cond_10

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 878
    move-object v0, v2

    goto :goto_10

    .line 882
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v3           #offerType:I
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 883
    .restart local v2       #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasOfferType()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 884
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_60

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 885
    move-object v0, v2

    .line 886
    goto :goto_29

    .line 887
    :cond_60
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 888
    move-object v0, v2

    goto :goto_3f
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getOriginalDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 284
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    .line 286
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getDocId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentType()I
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDocType()I

    move-result v0

    return v0
.end method

.method public getFirstCreatorBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .registers 3

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForCreator(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v0

    return-object v0
.end method

.method public getFirstItemBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    .registers 3

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForDoc(I)Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedPrice()Ljava/lang/String;
    .registers 3

    .prologue
    .line 811
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    .line 812
    .local v0, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->hasFormattedAmount()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 813
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v1

    .line 815
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
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
    .line 511
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
    .line 963
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForDocList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLinkAnnotation()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasLinkAnnotation()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 305
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getLink()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Link;

    move-result-object v0

    .line 307
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getMoreByBrowseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 398
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 399
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 400
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 402
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getMoreByHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 376
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 377
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 378
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 380
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getMoreByListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 387
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 388
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 389
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 391
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
    .line 594
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    .line 595
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
    .line 602
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v0

    .line 603
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
    .line 585
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 586
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
    .line 648
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

    .line 649
    .local v1, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v2

    if-ne v2, p1, :cond_8

    .line 653
    .end local v1           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getOriginalDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 3

    .prologue
    .line 914
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 916
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_13

    .line 917
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getPlusOneData()Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v1

    .line 919
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getRatingCount()J
    .registers 3

    .prologue
    .line 483
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

    .line 494
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v2

    if-nez v2, :cond_d

    .line 495
    new-array v1, v3, [I

    fill-array-data v1, :array_3e

    .line 502
    .local v1, histogram:[I
    :goto_c
    return-object v1

    .line 498
    .end local v1           #histogram:[I
    :cond_d
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    .line 499
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

    .line 502
    .restart local v1       #histogram:[I
    goto :goto_c

    .line 495
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getRelatedBrowseUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 158
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelated()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 159
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getRelatedDocTypeHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 180
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelatedDocType()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 181
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getRelatedDocTypeListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 191
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelatedDocType()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 192
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelatedDocType()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 194
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getRelatedHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 147
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelated()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 148
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getRelatedListUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 169
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionRelated()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 170
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionRelated()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    .line 172
    :goto_16
    return-object v1

    :cond_17
    const-string v1, ""

    goto :goto_16
.end method

.method public getReleaseType()I
    .registers 3

    .prologue
    .line 1017
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
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getReviewsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 2

    .prologue
    .line 564
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
    .line 476
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;->getStarRating()F

    move-result v0

    return v0
.end method

.method public getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    .registers 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

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
    .line 416
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    .registers 2

    .prologue
    .line 578
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
    .registers 6

    .prologue
    .line 935
    const-string v1, ""

    .line 936
    .local v1, sequence:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getWarningList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;

    .line 937
    .local v2, warning:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<br />"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 939
    .end local v2           #warning:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Warning;
    :cond_38
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    return-object v3
.end method

.method public getWhatsNew()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    if-nez v0, :cond_f

    .line 438
    :cond_c
    const-string v0, ""

    .line 440
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getRecentChangesHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_e
.end method

.method public getYouTubeWatchUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 619
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getBackendUrl()Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasAntennaInfo()Z
    .registers 4

    .prologue
    .line 971
    iget-object v2, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 972
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasTemplate()Z

    move-result v2

    if-nez v2, :cond_e

    .line 973
    const/4 v2, 0x0

    .line 976
    :goto_d
    return v2

    .line 975
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v1

    .line 976
    .local v1, template:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasSeriesAntenna()Z

    move-result v2

    goto :goto_d
.end method

.method public hasCensoring()Z
    .registers 3

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    .line 996
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
    .line 314
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v0

    return v0
.end method

.method public hasCreatorBadges()Z
    .registers 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForCreatorCount()I

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
    .line 271
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 272
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionMoreBy()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getSectionMoreBy()Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$SectionMetadata;->getListUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 274
    const/4 v1, 0x1

    .line 276
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public hasCrossSellContent()Z
    .registers 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 364
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasSectionCrossSell()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 365
    const/4 v1, 0x1

    .line 367
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hasDealOfTheDayInfo()Z
    .registers 2

    .prologue
    .line 967
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
    .line 536
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDetails()Z

    move-result v0

    return v0
.end method

.method public hasDocumentType()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasDocType()Z

    move-result v0

    return v0
.end method

.method public hasItemBadges()Z
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getBadgeForDocCount()I

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
    .line 293
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 294
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasLink()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 295
    const/4 v1, 0x1

    .line 297
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public hasPlusOneData()Z
    .registers 3

    .prologue
    .line 902
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    .line 903
    .local v0, annotations:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;
    if-eqz v0, :cond_13

    .line 904
    iget-object v1, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->hasPlusOneData()Z

    move-result v1

    .line 906
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public hasRating()Z
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAggregateRating()Z

    move-result v0

    return v0
.end method

.method public hasReleaseType()Z
    .registers 3

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    .line 1009
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

.method public hasSample()Z
    .registers 5

    .prologue
    .line 783
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

    .line 784
    .local v1, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 785
    const/4 v2, 0x1

    .line 788
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

    .line 858
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    .line 860
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

.method public hasVideos()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 843
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    .line 849
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
    .line 926
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAnnotations()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Annotations;->getWarningCount()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isAvailable(Lcom/google/android/finsky/api/model/DfeToc;)Z
    .registers 11
    .parameter "dfeToc"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 657
    if-nez p1, :cond_6

    move v2, v4

    .line 674
    :cond_5
    :goto_5
    return v2

    .line 662
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpus(I)Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    move-result-object v0

    .line 663
    .local v0, corpus:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    if-nez v0, :cond_1f

    .line 664
    const-string v6, "Corpus for %s is not available."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v6, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v4

    .line 665
    goto :goto_5

    .line 668
    :cond_1f
    iget-object v6, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAvailability()Z

    move-result v1

    .line 669
    .local v1, hasAvailability:Z
    if-eqz v1, :cond_4b

    iget-object v6, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRestriction()I

    move-result v3

    .line 670
    .local v3, restriction:I
    :goto_31
    if-ne v3, v5, :cond_4d

    move v2, v5

    .line 671
    .local v2, isAvailable:Z
    :goto_34
    if-nez v2, :cond_5

    .line 672
    const-string v6, "%s not available [restriction=%d]."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 669
    .end local v2           #isAvailable:Z
    .end local v3           #restriction:I
    :cond_4b
    const/4 v3, -0x1

    goto :goto_31

    .restart local v3       #restriction:I
    :cond_4d
    move v2, v4

    .line 670
    goto :goto_34
.end method

.method public isLocallyAvailable(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .registers 4
    .parameter "packageInfoCache"

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    .line 745
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    .line 748
    :goto_b
    return v0

    :cond_c
    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/Document;->isAppInstalled(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    goto :goto_b
.end method

.method public needsCheckoutFlow(I)Z
    .registers 4
    .parameter "offerType"

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    .line 823
    .local v0, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    if-eqz v0, :cond_b

    .line 824
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v1

    .line 826
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
    .line 835
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

.method public ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z
    .registers 7
    .parameter "packageInfoCache"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 689
    if-eqz p1, :cond_11

    .line 695
    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/Document;->isSystemApp(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 716
    :cond_a
    :goto_a
    return v1

    .line 699
    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/model/Document;->isAppInstalled(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 704
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 705
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->getPurchaseStatus(Ljava/lang/String;)Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    move-result-object v0

    .line 707
    .local v0, purchaseStatus:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    if-eqz v0, :cond_30

    iget-object v2, v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    sget-object v3, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    if-eq v2, v3, :cond_a

    .line 716
    .end local v0           #purchaseStatus:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    :cond_30
    invoke-direct {p0, v1}, Lcom/google/android/finsky/api/model/Document;->offerTypeCheck(I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    if-ne v2, v4, :cond_49

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/google/android/finsky/api/model/Document;->offerTypeCheck(I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-direct {p0, v4}, Lcom/google/android/finsky/api/model/Document;->offerTypeCheck(I)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_49
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public sampleOwnedByUser()Z
    .registers 2

    .prologue
    .line 724
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/model/Document;->offerTypeCheck(I)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mDocument:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1052
    iget-object v0, p0, Lcom/google/android/finsky/api/model/Document;->mCookie:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1053
    return-void
.end method
