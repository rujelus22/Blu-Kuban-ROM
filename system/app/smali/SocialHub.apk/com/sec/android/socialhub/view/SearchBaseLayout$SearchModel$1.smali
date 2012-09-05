.class final Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel$1;
.super Ljava/lang/Object;
.source "SearchBaseLayout.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
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
        "Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 528
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    .registers 4
    .parameter "source"

    .prologue
    .line 530
    new-instance v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    invoke-direct {v0}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;-><init>()V

    .line 531
    .local v0, model:Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->mDisplayTextResource:I

    .line 532
    iget-object v1, v0, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;->mFieldList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 533
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;
    .registers 3
    .parameter "size"

    .prologue
    .line 536
    new-array v0, p1, [Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel$1;->newArray(I)[Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    move-result-object v0

    return-object v0
.end method
