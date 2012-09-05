.class final Lcom/google/android/finsky/api/model/DfeList$1;
.super Ljava/lang/Object;
.source "DfeList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/DfeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/finsky/api/model/DfeList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeList;
    .registers 10
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .local v3, urlMapCount:I
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 104
    .local v4, urls:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_1f

    .line 105
    new-instance v5, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/finsky/api/model/PaginatedList$UrlOffsetPair;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 107
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .local v1, count:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v0, :cond_30

    .line 109
    .local v0, autoLoadNextPage:Z
    :goto_29
    new-instance v5, Lcom/google/android/finsky/api/model/DfeList;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v1, v0, v6}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Ljava/util/List;IZLcom/google/android/finsky/api/model/DfeList$1;)V

    return-object v5

    .line 108
    .end local v0           #autoLoadNextPage:Z
    :cond_30
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/api/model/DfeList;
    .registers 3
    .parameter "size"

    .prologue
    .line 114
    new-array v0, p1, [Lcom/google/android/finsky/api/model/DfeList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeList$1;->newArray(I)[Lcom/google/android/finsky/api/model/DfeList;

    move-result-object v0

    return-object v0
.end method
