.class public Lcom/google/android/apps/pos/model/PlusoneError$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private domain:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private locationType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private reason:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 171
    new-instance v0, Lcom/google/android/apps/pos/model/f;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/f;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-direct {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->readFromParcel(Landroid/os/Parcel;)V

    .line 218
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->domain:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->location:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->locationType:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->message:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->reason:Ljava/lang/String;

    .line 337
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 303
    instance-of v0, p1, Lcom/google/android/apps/pos/model/PlusoneError$Data;

    if-eqz v0, :cond_50

    .line 304
    check-cast p1, Lcom/google/android/apps/pos/model/PlusoneError$Data;

    .line 305
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getLocationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getLocationType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x1

    .line 311
    :goto_4d
    return v0

    .line 305
    :cond_4e
    const/4 v0, 0x0

    goto :goto_4d

    .line 311
    :cond_50
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4d
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->locationType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 297
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getDomain()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getLocation()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getLocationType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/PlusoneError$Data;->getReason()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/android/apps/pos/model/PlusoneError$Data;
    .registers 2
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->domain:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/android/apps/pos/model/PlusoneError$Data;
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->location:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public setLocationType(Ljava/lang/String;)Lcom/google/android/apps/pos/model/PlusoneError$Data;
    .registers 2
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->locationType:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/android/apps/pos/model/PlusoneError$Data;
    .registers 2
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->message:Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/google/android/apps/pos/model/PlusoneError$Data;
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->reason:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->locationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/pos/model/PlusoneError$Data;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    return-void
.end method
