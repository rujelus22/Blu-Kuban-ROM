.class public Lcom/google/android/apps/pos/model/PlusoneError;
.super Lcom/google/android/apps/pos/model/PlusoneResponse;
.source "PlusoneError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/pos/model/PlusoneError$Data;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/pos/model/PlusoneError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private data:[Lcom/google/android/apps/pos/model/PlusoneError$Data;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/pos/model/PlusoneError$1;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/PlusoneError$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/model/PlusoneError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/PlusoneError$Data;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->data:[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/PlusoneError$Data;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->data:[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneError;->readFromParcel(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 127
    instance-of v1, p1, Lcom/google/android/apps/pos/model/PlusoneError;

    if-eqz v1, :cond_4b

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/google/android/apps/pos/model/PlusoneError;

    .line 129
    .local v0, otherPosError:Lcom/google/android/apps/pos/model/PlusoneError;
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getResponseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/PlusoneError;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/PlusoneError;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getData()[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/PlusoneError;->getData()[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/PlusoneError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    .line 134
    .end local v0           #otherPosError:Lcom/google/android/apps/pos/model/PlusoneError;
    :goto_48
    return v1

    .line 129
    .restart local v0       #otherPosError:Lcom/google/android/apps/pos/model/PlusoneError;
    :cond_49
    const/4 v1, 0x0

    goto :goto_48

    .line 134
    .end local v0           #otherPosError:Lcom/google/android/apps/pos/model/PlusoneError;
    :cond_4b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_48
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->code:I

    return v0
.end method

.method public getData()[Lcom/google/android/apps/pos/model/PlusoneError$Data;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->data:[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getResponseId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getData()[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError;->getMessage()Ljava/lang/String;

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
    .line 157
    invoke-super {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->code:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/PlusoneError$Data;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->data:[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->data:[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    sget-object v1, Lcom/google/android/apps/pos/model/PlusoneError$Data;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->message:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    const-class v1, Lcom/google/android/apps/pos/model/PlusoneError;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/pos/model/PlusoneError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/pos/model/PlusoneError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/pos/model/PlusoneResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 149
    iget v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->data:[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->data:[Lcom/google/android/apps/pos/model/PlusoneError$Data;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    return-void
.end method
