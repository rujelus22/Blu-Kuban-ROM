.class public Lcom/google/android/apps/plus/api/LocationQuery;
.super Ljava/lang/Object;
.source "LocationQuery.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/api/LocationQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLocation:Landroid/location/Location;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/apps/plus/api/LocationQuery$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/api/LocationQuery$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/api/LocationQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .registers 5
    .parameter "location"
    .parameter "query"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_d

    .line 27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Location is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mLocation:Landroid/location/Location;

    .line 31
    iput-object p2, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mQuery:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/plus/api/LocationQuery;->buildKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mKey:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/google/android/apps/plus/api/LocationQuery;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mLocation:Landroid/location/Location;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mQuery:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/plus/api/LocationQuery;->buildKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mKey:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/api/LocationQuery$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/api/LocationQuery;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private buildKey()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x7c

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/LocationQuery;->hasQueryString()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 104
    if-nez p1, :cond_4

    .line 109
    .end local p1
    :cond_3
    :goto_3
    return v0

    .line 106
    .restart local p1
    :cond_4
    instance-of v1, p1, Lcom/google/android/apps/plus/api/LocationQuery;

    if-eqz v1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mKey:Ljava/lang/String;

    check-cast p1, Lcom/google/android/apps/plus/api/LocationQuery;

    .end local p1
    iget-object v1, p1, Lcom/google/android/apps/plus/api/LocationQuery;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public hasQueryString()Z
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/api/LocationQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    return-void
.end method
