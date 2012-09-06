.class public Lcom/android/athome/picker/MediaOutput;
.super Ljava/lang/Object;
.source "MediaOutput.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mId:Ljava/lang/String;

.field private mIsMuted:Z

.field private mName:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private final mType:I

.field private mVolume:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Lcom/android/athome/picker/MediaOutput$1;

    invoke-direct {v0}, Lcom/android/athome/picker/MediaOutput$1;-><init>()V

    sput-object v0, Lcom/android/athome/picker/MediaOutput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    .line 62
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 63
    .local v0, tmp:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 64
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FZ)V
    .registers 7
    .parameter "id"
    .parameter "type"
    .parameter "name"
    .parameter "status"
    .parameter "volume"
    .parameter "isMuted"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    .line 41
    iput-object p3, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    .line 44
    iput-boolean p6, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    instance-of v3, p1, Lcom/android/athome/picker/MediaOutput;

    if-nez v3, :cond_8

    move v1, v2

    .line 110
    :cond_7
    :goto_7
    return v1

    .line 106
    :cond_8
    if-eq p1, p0, :cond_7

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 110
    .local v0, that:Lcom/android/athome/picker/MediaOutput;
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget v3, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v4

    if-eq v3, v4, :cond_7

    :cond_21
    move v1, v2

    goto :goto_7
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMuted()Z
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    return v0
.end method

.method public getVolume()F
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    return v0
.end method

.method public isGroupable()Z
    .registers 3

    .prologue
    .line 206
    iget v0, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setIsMuted(Z)V
    .registers 2
    .parameter "isMuted"

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    .line 203
    return-void
.end method

.method public setVolume(F)V
    .registers 2
    .parameter "volume"

    .prologue
    .line 194
    iput p1, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaOutput(mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 99
    return-void
.end method
