.class final Lcom/google/android/finsky/api/model/DfeBrowse$1;
.super Ljava/lang/Object;
.source "DfeBrowse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/api/model/DfeBrowse;
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
        "Lcom/google/android/finsky/api/model/DfeBrowse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeBrowse;
    .registers 5
    .parameter

    .prologue
    .line 128
    const-class v0, Lcom/google/android/finsky/utils/ParcelableProto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    .line 130
    new-instance v1, Lcom/google/android/finsky/api/model/DfeBrowse;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/finsky/api/model/DfeBrowse;-><init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBrowse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/finsky/api/model/DfeBrowse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/finsky/api/model/DfeBrowse;
    .registers 3
    .parameter "size"

    .prologue
    .line 135
    new-array v0, p1, [Lcom/google/android/finsky/api/model/DfeBrowse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/DfeBrowse$1;->newArray(I)[Lcom/google/android/finsky/api/model/DfeBrowse;

    move-result-object v0

    return-object v0
.end method