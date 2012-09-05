.class public Lcom/google/android/apps/pos/model/Plusones;
.super Lcom/google/android/apps/pos/model/PlusoneResponse;
.source "Plusones.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/pos/model/Plusones;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private continuationToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private items:[Lcom/google/android/apps/pos/model/Plusone;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/pos/model/Plusones$1;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Plusones$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/model/Plusones;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Plusone;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Plusone;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/Plusones;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 127
    instance-of v1, p1, Lcom/google/android/apps/pos/model/Plusones;

    if-eqz v1, :cond_35

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/google/android/apps/pos/model/Plusones;

    .line 129
    .local v0, otherPlusones:Lcom/google/android/apps/pos/model/Plusones;
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getResponseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Plusones;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getContinuationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Plusones;->getContinuationToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x1

    .line 133
    .end local v0           #otherPlusones:Lcom/google/android/apps/pos/model/Plusones;
    :goto_32
    return v1

    .line 129
    .restart local v0       #otherPlusones:Lcom/google/android/apps/pos/model/Plusones;
    :cond_33
    const/4 v1, 0x0

    goto :goto_32

    .line 133
    .end local v0           #otherPlusones:Lcom/google/android/apps/pos/model/Plusones;
    :cond_35
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_32
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Lcom/google/android/apps/pos/model/Plusone;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getResponseId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getContinuationToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->continuationToken:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Plusone;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    sget-object v1, Lcom/google/android/apps/pos/model/Plusone;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 152
    return-void
.end method

.method public setContinuationToken(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusones;
    .registers 2
    .parameter "continuationToken"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusones;->continuationToken:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setItems([Lcom/google/android/apps/pos/model/Plusone;)Lcom/google/android/apps/pos/model/Plusones;
    .registers 2
    .parameter "items"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 91
    return-object p0
.end method

.method public setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusones;
    .registers 2
    .parameter "responseId"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusones;->responseId:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/pos/model/PlusoneResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->continuationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 143
    return-void
.end method
