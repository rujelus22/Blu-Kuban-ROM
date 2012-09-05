.class public Lcom/google/android/finsky/api/model/DfeBrowse;
.super Lcom/google/android/finsky/api/model/DfeModel;
.source "DfeBrowse.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/api/model/DfeModel;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;",
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
            "Lcom/google/android/finsky/api/model/DfeBrowse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 124
    new-instance v0, Lcom/google/android/finsky/api/model/DfeBrowse$1;

    invoke-direct {v0}, Lcom/google/android/finsky/api/model/DfeBrowse$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/api/model/DfeBrowse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V
    .registers 3
    .parameter "dfeApi"
    .parameter "browseResponse"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 33
    iput-object p2, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V
    .registers 3
    .parameter "dfeApi"
    .parameter "landingUrl"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/finsky/api/model/DfeModel;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 43
    invoke-virtual {p1, p2, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 44
    return-void
.end method


# virtual methods
.method public buildContentList()Lcom/google/android/finsky/api/model/DfeList;
    .registers 5

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->isReady()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getContentsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 81
    :cond_12
    const/4 v0, 0x0

    .line 83
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getContentsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    goto :goto_13
.end method

.method public buildPromoList()Lcom/google/android/finsky/api/model/DfeList;
    .registers 5

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->hasPromotionalItems()Z

    move-result v0

    if-nez v0, :cond_8

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getPromoUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    goto :goto_7
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getBreadcrumbList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getBreadcrumbList()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCategoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasCategories()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getCategoryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public hasPromotionalItems()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;->getPromoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->clearErrors()V

    .line 110
    iput-object p1, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/DfeBrowse;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBrowse;->onResponse(Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/api/model/DfeBrowse;->mBrowseResponse:Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    invoke-static {v0}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    return-void
.end method
