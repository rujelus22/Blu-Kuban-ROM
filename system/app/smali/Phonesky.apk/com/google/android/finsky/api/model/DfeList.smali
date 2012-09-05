.class public Lcom/google/android/finsky/api/model/DfeList;
.super Lcom/google/android/finsky/api/model/BucketedList;
.source "DfeList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/BucketedList",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/finsky/api/model/DfeList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeList$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V
    .registers 4
    .parameter "api"
    .parameter "url"
    .parameter "autoLoadNextPage"

    .prologue
    .line 45
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/lang/String;Z)V

    .line 46
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/util/List;IZ)V
    .registers 4
    .parameter
    .parameter "currentCount"
    .parameter "autoLoadNextPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/util/List;IZ)V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;IZLcom/google/android/finsky/api/model/DfeList$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Ljava/util/List;IZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    .registers 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 56
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 58
    .local v4, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_51

    .line 59
    invoke-virtual {p1, v8}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v5

    .line 60
    .local v5, rootDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, cookie:Ljava/lang/String;
    :goto_1e
    invoke-virtual {v5}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 63
    .local v3, item:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    new-instance v6, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v6, v3, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 60
    .end local v0           #cookie:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_3b
    const/4 v0, 0x0

    goto :goto_1e

    .line 65
    .restart local v0       #cookie:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3d
    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 66
    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    new-instance v7, Lcom/google/android/finsky/model/Bucket;

    invoke-virtual {p1, v8}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/finsky/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v0           #cookie:Ljava/lang/String;
    .end local v5           #rootDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_50
    return-object v4

    .line 68
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_51
    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 69
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 70
    .local v1, doc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    iget-object v6, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    new-instance v7, Lcom/google/android/finsky/model/Bucket;

    invoke-direct {v7, v1}, Lcom/google/android/finsky/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e
.end method

.method protected bridge synthetic getItemsFromResponse(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getNextPageUrl(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/lang/String;
    .registers 6
    .parameter "response"

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, nextPageUrl:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 124
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v0

    .line 125
    .local v0, dfeDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasAnnotations()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 126
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getNextPageUrl()Ljava/lang/String;

    move-result-object v1

    .line 129
    .end local v0           #dfeDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_21
    return-object v1
.end method

.method protected bridge synthetic getNextPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList;->getNextPageUrl(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected makeRequest(Ljava/lang/String;)Lcom/android/volley/Request;
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V
    .registers 2
    .parameter "api"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    .line 92
    .local v1, wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v2, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v2, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    .line 95
    .end local v1           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mAutoLoadNextPage:Z

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    :goto_32
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void

    .line 96
    :cond_36
    const/4 v2, 0x0

    goto :goto_32
.end method
