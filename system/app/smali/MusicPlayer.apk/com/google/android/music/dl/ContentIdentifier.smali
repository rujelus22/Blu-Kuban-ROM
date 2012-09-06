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
    .line 173
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    .line 41
    iput-object p3, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    .line 46
    invoke-static {}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    .line 47
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

.method public static idsToString([Lcom/google/android/music/dl/ContentIdentifier;)Ljava/lang/String;
    .registers 8
    .parameter "prefetchList"

    .prologue
    .line 127
    if-nez p0, :cond_5

    .line 128
    const-string v5, "null"

    .line 138
    :goto_4
    return-object v5

    .line 130
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v1, builder:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Lcom/google/android/music/dl/ContentIdentifier;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_d
    if-ge v2, v4, :cond_1c

    aget-object v3, v0, v2

    .line 132
    .local v3, id:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 135
    .end local v3           #id:Lcom/google/android/music/dl/ContentIdentifier;
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_30

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 138
    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public static parseFromUrlSring(Ljava/lang/String;)Lcom/google/android/music/dl/ContentIdentifier;
    .registers 10
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 97
    const-string v5, "_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, res:[Ljava/lang/String;
    if-eqz v3, :cond_d

    array-length v5, v3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_f

    :cond_d
    move-object v5, v6

    .line 112
    :goto_e
    return-object v5

    .line 102
    :cond_f
    const/4 v5, 0x0

    :try_start_10
    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 103
    .local v4, type:I
    if-ltz v4, :cond_1f

    invoke-static {}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v5

    array-length v5, v5

    if-lt v4, v5, :cond_21

    :cond_1f
    move-object v5, v6

    .line 104
    goto :goto_e

    .line 107
    :cond_21
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 109
    .local v1, id:J
    new-instance v5, Lcom/google/android/music/dl/ContentIdentifier;

    invoke-static {}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-direct {v5, v1, v2, v7}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_33} :catch_34

    goto :goto_e

    .line 110
    .end local v1           #id:J
    .end local v4           #type:I
    :catch_34
    move-exception v0

    .line 111
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

    .line 112
    goto :goto_e
.end method


# virtual methods
.method public compareTo(Lcom/google/android/music/dl/ContentIdentifier;)I
    .registers 5
    .parameter "obj"

    .prologue
    .line 186
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
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/google/android/music/dl/ContentIdentifier;)Z
    .registers 8
    .parameter "id"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    if-nez p1, :cond_6

    move v0, v1

    .line 170
    :cond_5
    :goto_5
    return v0

    .line 167
    :cond_6
    if-eq p0, p1, :cond_5

    .line 170
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

    .line 157
    instance-of v1, p1, Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v1, :cond_10

    .line 158
    if-eq p0, p1, :cond_f

    check-cast p1, Lcom/google/android/music/dl/ContentIdentifier;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    .line 160
    :cond_10
    return v0
.end method

.method public getDomain()Lcom/google/android/music/dl/ContentIdentifier$Domain;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 152
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

.method public isAtHomeDomain()Z
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->isAtHomeDomain()Z

    move-result v0

    return v0
.end method

.method public isAtHomePartyDomain()Z
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->AT_HOME_PARTY:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isDefaultDomain()Z
    .registers 3

    .prologue
    .line 58
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
    .line 62
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
    .line 119
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    sget-object v1, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    if-ne v0, v1, :cond_d

    .line 120
    iget-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 122
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
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-wide v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUrlString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-wide v1, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-object v0, p0, Lcom/google/android/music/dl/ContentIdentifier;->mDomain:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    return-void
.end method
