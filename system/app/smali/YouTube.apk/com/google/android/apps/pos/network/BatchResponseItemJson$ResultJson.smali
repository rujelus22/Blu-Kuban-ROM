.class public Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
.super Lcom/google/api/client/json/b;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private abtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private continuationToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "display_name"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private items:[Lcom/google/android/apps/pos/model/Plusone;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private metadata:Lcom/google/android/apps/pos/model/Metadata;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "profile_image_url"
    .end annotation
.end field

.field private setByViewer:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "isSetByViewer"
    .end annotation
.end field

.field private signedUp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 137
    new-instance v0, Lcom/google/android/apps/pos/network/b;

    invoke-direct {v0}, Lcom/google/android/apps/pos/network/b;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    .line 247
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Plusone;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    .line 247
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Plusone;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->readFromParcel(Landroid/os/Parcel;)V

    .line 155
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public getAbuseToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->abtk:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Lcom/google/android/apps/pos/model/Plusone;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/apps/pos/model/Metadata;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSetByViewer()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->setByViewer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSignedUp()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->signedUp:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->displayName:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->email:Ljava/lang/String;

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_18

    .line 380
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->signedUp:Ljava/lang/Boolean;

    .line 382
    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->profileImageUrl:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->continuationToken:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/pos/model/Plusone;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    sget-object v1, Lcom/google/android/apps/pos/model/Plusone;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->abtk:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->id:Ljava/lang/String;

    .line 390
    const-class v0, Lcom/google/android/apps/pos/model/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/model/Metadata;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_59

    .line 393
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->setByViewer:Ljava/lang/Boolean;

    .line 395
    :cond_59
    return-void
.end method

.method setAbuseToken(Ljava/lang/String;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->abtk:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method setContinuationToken(Ljava/lang/String;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->continuationToken:Ljava/lang/String;

    .line 259
    return-object p0
.end method

.method setDisplayName(Ljava/lang/String;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->displayName:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method setEmail(Ljava/lang/String;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->email:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method setId(Ljava/lang/String;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->id:Ljava/lang/String;

    .line 323
    return-object p0
.end method

.method setItems([Lcom/google/android/apps/pos/model/Plusone;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    .line 271
    return-object p0
.end method

.method setMetadata(Lcom/google/android/apps/pos/model/Metadata;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    .line 335
    return-object p0
.end method

.method setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->profileImageUrl:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method setSetByViewer(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->setByViewer:Ljava/lang/Boolean;

    .line 347
    return-object p0
.end method

.method setSignedUp(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->signedUp:Ljava/lang/Boolean;

    .line 218
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->signedUp:Ljava/lang/Boolean;

    if-nez v0, :cond_41

    move-object v0, v1

    :goto_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->continuationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->items:[Lcom/google/android/apps/pos/model/Plusone;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->abtk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->metadata:Lcom/google/android/apps/pos/model/Metadata;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->setByViewer:Ljava/lang/Boolean;

    if-nez v0, :cond_48

    :goto_3d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    return-void

    .line 362
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->signedUp:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 372
    :cond_48
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;->setByViewer:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3d
.end method
