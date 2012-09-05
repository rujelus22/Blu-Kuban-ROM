.class public Lcom/google/android/music/dl/ContentIdentifier;
.super Ljava/lang/Object;
.source "ContentIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/ContentIdentifier$Domain;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/music/dl/ContentIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/dl/ContentIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

.field private final mId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    new-instance v0, Lcom/google/android/music/dl/ContentIdentifier$1;

    invoke-direct {v0}, Lcom/google/android/music/dl/ContentIdentifier$1;-><init>()V

    sput-object v0, Lcom/google/android/music/dl/ContentIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V
    .registers 4
    .parameter "id"
    .parameter "domain"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    .line 33
    iput-object p3, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    .line 38
    invoke-static {}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/music/dl/ContentIdentifier$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parseFromUrlSring(Ljava/lang/String;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 10
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 77
    const-string v5, "_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, res:[Ljava/lang/String;
    if-eqz v3, :cond_d

    array-length v5, v3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_f

    :cond_d
    move-object v5, v6

    .line 92
    :goto_e
    return-object v5

    .line 82
    :cond_f
    const/4 v5, 0x0

    :try_start_10
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 83
    .local v4, type:I
    if-ltz v4, :cond_1f

    invoke-static {}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v5

    array-length v5, v5

    if-lt v4, v5, :cond_21

    :cond_1f
    move-object v5, v6

    .line 84
    goto :goto_e

    .line 87
    :cond_21
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 89
    .local v1, id:J
    new-instance v5, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-static {}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-direct {v5, v1, v2, v7}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_33} :catch_34

    goto :goto_e

    .line 90
    .end local v1           #id:J
    .end local v4           #type:I
    :catch_34
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "ContentIdentifier"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: e"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 92
    goto :goto_e
.end method


# virtual methods
.method public compareTo(Lcom/google/android/music/dl/ContentIdentifier;)I
    .registers 5
    .parameter "obj"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, p1, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/music/dl/ContentIdentifier;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/ContentIdentifier;->compareTo(Lcom/google/android/music/dl/ContentIdentifier;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/google/android/music/dl/ContentIdentifier;)Z
    .registers 8
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    if-nez p1, :cond_6

    move v0, v1

    .line 133
    :cond_5
    :goto_5
    return v0

    .line 130
    :cond_6
    if-eq p0, p1, :cond_5

    .line 133
    iget-wide v2, p1, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    iget-wide v4, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_16

    iget-object v2, p1, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    iget-object v3, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-eq v2, v3, :cond_5

    :cond_16
    move v0, v1

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 120
    instance-of v1, p1, Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v1, :cond_10

    .line 121
    if-eq p0, p1, :cond_f

    check-cast p1, Lcom/google/android/music/dl/ContentIdentifier;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    .line 123
    :cond_10
    return v0
.end method

.method public getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->ordinal()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isDefaultDomain()Z
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSharedDomain()Z
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->SHARED:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toFileSystemString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v0, v1, :cond_d

    .line 98
    iget-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/music/dl/ContentIdentifier;->toUrlString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUrlString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-wide v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void
.end method
