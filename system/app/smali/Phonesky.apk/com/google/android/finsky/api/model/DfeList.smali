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

.field private mFilteredDocId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeList$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V
    .registers 5
    .parameter "api"
    .parameter "url"
    .parameter "autoLoadNextPage"

    .prologue
    .line 47
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/lang/String;Z)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/util/List;IZ)V
    .registers 5
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
    .line 34
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/api/model/BucketedList;-><init>(Ljava/util/List;IZ)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    .line 35
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
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public filterDocId(Ljava/lang/String;)V
    .registers 2
    .parameter "docId"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method protected getItemsFromResponse(Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;)Ljava/util/List;
    .registers 12
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
    const/4 v9, 0x0

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_66

    .line 61
    invoke-virtual {p1, v9}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v6

    .line 62
    .local v6, rootDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, cookie:Ljava/lang/String;
    :goto_1f
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getChildList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 65
    .local v4, item:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    new-instance v2, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {v2, v4, v0}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;Ljava/lang/String;)V

    .line 66
    .local v2, document:Lcom/google/android/finsky/api/model/Document;
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4c

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/finsky/api/model/DfeList;->mFilteredDocId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 71
    :cond_4c
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 62
    .end local v0           #cookie:Ljava/lang/String;
    .end local v2           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_50
    const/4 v0, 0x0

    goto :goto_1f

    .line 73
    .restart local v0       #cookie:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_52
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 74
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    new-instance v8, Lcom/google/android/finsky/api/model/Bucket;

    invoke-virtual {p1, v9}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v0           #cookie:Ljava/lang/String;
    .end local v6           #rootDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_65
    return-object v5

    .line 76
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_66
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 77
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 78
    .local v1, doc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    iget-object v7, p0, Lcom/google/android/finsky/api/model/DfeList;->mBuckets:Ljava/util/List;

    new-instance v8, Lcom/google/android/finsky/api/model/Bucket;

    invoke-direct {v8, v1}, Lcom/google/android/finsky/api/model/Bucket;-><init>(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73
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
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, nextPageUrl:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDocCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 140
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getDoc(I)Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v0

    .line 141
    .local v0, dfeDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->hasContainerMetadata()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 142
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;->getContainerMetadata()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;->getNextPageUrl()Ljava/lang/String;

    move-result-object v1

    .line 145
    .end local v0           #dfeDoc:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    :cond_1b
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
    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v0, p1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getList(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public setDfeApi(Lcom/google/android/finsky/api/DfeApi;)V
    .registers 2
    .parameter "api"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeList;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mUrlOffsetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
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

    .line 108
    .local v1, wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    iget v2, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->offset:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v2, v1, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_f

    .line 111
    .end local v1           #wrapper:Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-boolean v2, p0, Lcom/google/android/finsky/api/model/DfeList;->mAutoLoadNextPage:Z

    if-eqz v2, :cond_36

    const/4 v2, 0x1

    :goto_32
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void

    .line 112
    :cond_36
    const/4 v2, 0x0

    goto :goto_32
.end method
