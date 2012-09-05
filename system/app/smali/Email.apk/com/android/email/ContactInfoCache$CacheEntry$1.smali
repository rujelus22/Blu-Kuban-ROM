.class final Lcom/android/email/ContactInfoCache$CacheEntry$1;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/ContactInfoCache$CacheEntry;
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
        "Lcom/android/email/ContactInfoCache$CacheEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/email/ContactInfoCache$CacheEntry;
    .registers 3
    .parameter "in"

    .prologue
    .line 294
    new-instance v0, Lcom/android/email/ContactInfoCache$CacheEntry;

    invoke-direct {v0}, Lcom/android/email/ContactInfoCache$CacheEntry;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/email/ContactInfoCache$CacheEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/email/ContactInfoCache$CacheEntry;
    .registers 3
    .parameter "size"

    .prologue
    .line 298
    new-array v0, p1, [Lcom/android/email/ContactInfoCache$CacheEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/email/ContactInfoCache$CacheEntry$1;->newArray(I)[Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method
