.class public Lcom/google/android/apps/pos/model/GlobalCounts;
.super Ljava/lang/Object;
.source "GlobalCounts.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/pos/model/GlobalCounts;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private people:[Lcom/google/android/apps/pos/model/Person;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "person"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/pos/model/GlobalCounts$1;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/GlobalCounts$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/model/GlobalCounts;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->count:Ljava/lang/Double;

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Person;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->people:[Lcom/google/android/apps/pos/model/Person;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->count:Ljava/lang/Double;

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Person;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->people:[Lcom/google/android/apps/pos/model/Person;

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/model/GlobalCounts;->readFromParcel(Landroid/os/Parcel;)V

    .line 46
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->count:Ljava/lang/Double;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Person;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->people:[Lcom/google/android/apps/pos/model/Person;

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->people:[Lcom/google/android/apps/pos/model/Person;

    sget-object v1, Lcom/google/android/apps/pos/model/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 124
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 97
    instance-of v1, p1, Lcom/google/android/apps/pos/model/GlobalCounts;

    if-eqz v1, :cond_27

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/google/android/apps/pos/model/GlobalCounts;

    .line 99
    .local v0, otherGlobalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getPeople()[Lcom/google/android/apps/pos/model/Person;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getPeople()[Lcom/google/android/apps/pos/model/Person;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    .line 102
    .end local v0           #otherGlobalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;
    :goto_24
    return v1

    .line 99
    .restart local v0       #otherGlobalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;
    :cond_25
    const/4 v1, 0x0

    goto :goto_24

    .line 102
    .end local v0           #otherGlobalCounts:Lcom/google/android/apps/pos/model/GlobalCounts;
    :cond_27
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_24
.end method

.method public getCount()Ljava/lang/Double;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->count:Ljava/lang/Double;

    return-object v0
.end method

.method public getPeople()[Lcom/google/android/apps/pos/model/Person;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->people:[Lcom/google/android/apps/pos/model/Person;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getPeople()[Lcom/google/android/apps/pos/model/Person;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->count:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->people:[Lcom/google/android/apps/pos/model/Person;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/pos/model/GlobalCounts;->people:[Lcom/google/android/apps/pos/model/Person;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 118
    return-void
.end method
