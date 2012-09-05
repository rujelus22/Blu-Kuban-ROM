.class final Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel$1;
.super Ljava/lang/Object;
.source "ContactCacheModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
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
        "Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .registers 5
    .parameter "in"

    .prologue
    .line 38
    new-instance v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    invoke-direct {v0}, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;-><init>()V

    .line 39
    .local v0, model:Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;

    .line 42
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
    .registers 3
    .parameter "size"

    .prologue
    .line 32
    new-array v0, p1, [Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel$1;->newArray(I)[Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;

    move-result-object v0

    return-object v0
.end method
