.class public Lcom/google/android/apps/pos/model/Plusones;
.super Lcom/google/android/apps/pos/model/PlusoneResponse;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private continuationToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private items:[Lcom/google/android/apps/pos/model/Plusone;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/pos/model/g;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/g;-><init>()V

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
    .parameter

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
    .registers 4
    .parameter

    .prologue
    .line 127
    instance-of v0, p1, Lcom/google/android/apps/pos/model/Plusones;

    if-eqz v0, :cond_34

    .line 128
    check-cast p1, Lcom/google/android/apps/pos/model/Plusones;

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getResponseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusones;->getResponseId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getContinuationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusones;->getContinuationToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    .line 133
    :goto_31
    return v0

    .line 129
    :cond_32
    const/4 v0, 0x0

    goto :goto_31

    .line 133
    :cond_34
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_31
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getItemIds()[Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->hasItems()Z

    move-result v0

    if-nez v0, :cond_a

    .line 103
    new-array v0, v1, [Ljava/lang/String;

    .line 112
    :goto_9
    return-object v0

    .line 105
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_15
    if-ge v0, v4, :cond_25

    aget-object v5, v3, v0

    .line 107
    invoke-virtual {v5}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v5

    .line 108
    if-eqz v5, :cond_22

    .line 109
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 112
    :cond_25
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_9
.end method

.method public getItems()[Lcom/google/android/apps/pos/model/Plusone;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    return-object v0
.end method

.method public hasItems()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
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

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter

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
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusones;->continuationToken:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setItems([Lcom/google/android/apps/pos/model/Plusone;)Lcom/google/android/apps/pos/model/Plusones;
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusones;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 91
    return-object p0
.end method

.method public bridge synthetic setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 3
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/Plusones;->setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusones;

    move-result-object v0

    return-object v0
.end method

.method public setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusones;
    .registers 2
    .parameter

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
    .parameter
    .parameter

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
