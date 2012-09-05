.class public Lcom/google/android/apps/pos/model/Plusone;
.super Lcom/google/android/apps/pos/model/PlusoneResponse;
.source "Plusone.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/pos/model/Plusone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private metadata:Lcom/google/android/apps/pos/model/Metadata;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private setByViewer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "isSetByViewer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/pos/model/Plusone$1;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Plusone$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/model/Plusone;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/apps/pos/model/Metadata;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Metadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 50
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/apps/pos/model/Metadata;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Metadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 50
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/Plusone;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 181
    instance-of v1, p1, Lcom/google/android/apps/pos/model/Plusone;

    if-eqz v1, :cond_51

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/google/android/apps/pos/model/Plusone;

    .line 183
    .local v0, otherPlusone:Lcom/google/android/apps/pos/model/Plusone;
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getResponseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Plusone;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Plusone;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x1

    .line 189
    .end local v0           #otherPlusone:Lcom/google/android/apps/pos/model/Plusone;
    :goto_4e
    return v1

    .line 183
    .restart local v0       #otherPlusone:Lcom/google/android/apps/pos/model/Plusone;
    :cond_4f
    const/4 v1, 0x0

    goto :goto_4e

    .line 189
    .end local v0           #otherPlusone:Lcom/google/android/apps/pos/model/Plusone;
    :cond_51
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4e
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/pos/model/Metadata;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 176
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getResponseId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getKind()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSetByViewer()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->kind:Ljava/lang/String;

    .line 208
    const-class v0, Lcom/google/android/apps/pos/model/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/model/Metadata;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_29

    .line 211
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 213
    :cond_29
    return-void
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter "id"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter "kind"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->kind:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/apps/pos/model/Metadata;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter "metadata"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 121
    return-object p0
.end method

.method public setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter "responseId"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->responseId:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setSetByViewer(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter "setByViewer"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 143
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 168
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

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
    .line 194
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/pos/model/PlusoneResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    return-void

    .line 199
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method
