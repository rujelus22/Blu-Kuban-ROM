.class public Lcom/google/android/apps/pos/model/Plusone;
.super Lcom/google/android/apps/pos/model/PlusoneResponse;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private abtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private metadata:Lcom/google/android/apps/pos/model/Metadata;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private setByViewer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "isSetByViewer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/pos/model/d;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/d;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/model/Plusone;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/apps/pos/model/Metadata;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Metadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/apps/pos/model/Metadata;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Metadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/Plusone;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/apps/pos/model/Metadata;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/Metadata;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 69
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 203
    instance-of v0, p1, Lcom/google/android/apps/pos/model/Plusone;

    if-eqz v0, :cond_5e

    .line 204
    check-cast p1, Lcom/google/android/apps/pos/model/Plusone;

    .line 205
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getResponseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusone;->getResponseId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getAbuseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusone;->getAbuseToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getKind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusone;->getKind()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    .line 212
    :goto_5b
    return v0

    .line 205
    :cond_5c
    const/4 v0, 0x0

    goto :goto_5b

    .line 212
    :cond_5e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5b
.end method

.method public getAbuseToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->abtk:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()Ljava/lang/Double;
    .registers 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Metadata;->hasGlobalCounts()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_1c
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_21
    const-wide/16 v0, 0x0

    goto :goto_1c
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/pos/model/Metadata;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    return-object v0
.end method

.method public getPeople()[Lcom/google/android/apps/pos/model/Person;
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Metadata;->hasGlobalCounts()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/GlobalCounts;->hasPeople()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/GlobalCounts;->getPeople()[Lcom/google/android/apps/pos/model/Person;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Person;

    goto :goto_24
.end method

.method public hasMetadata()Z
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 197
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getResponseId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getAbuseToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getKind()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSetByViewer()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSetByViewerKnown()Z
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->abtk:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->kind:Ljava/lang/String;

    .line 233
    const-class v0, Lcom/google/android/apps/pos/model/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/model/Metadata;

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_2f

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 238
    :cond_2f
    return-void
.end method

.method public setAbuseToken(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->abtk:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->kind:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setMetadata(Lcom/google/android/apps/pos/model/Metadata;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 142
    return-object p0
.end method

.method public setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->responseId:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public bridge synthetic setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 3
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/Plusone;->setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v0

    return-object v0
.end method

.method public setSetByViewer(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/Plusone;
    .registers 2
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    .line 164
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    invoke-static {p0}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Lcom/google/common/base/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/q;->a(Ljava/lang/Object;)Lcom/google/common/base/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/q;->a(Ljava/lang/Object;)Lcom/google/common/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/pos/model/PlusoneResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->abtk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    return-void

    .line 223
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/pos/model/Plusone;->setByViewer:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method
