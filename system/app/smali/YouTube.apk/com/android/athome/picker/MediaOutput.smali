.class public Lcom/android/athome/picker/MediaOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final TYPE_AT_HOME_RECEIVER:I = 0x2

.field public static final TYPE_SPEAKER:I = 0x1

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_USER_DEFINED:I = 0x3e8


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
    new-instance v0, Lcom/android/athome/picker/e;

    invoke-direct {v0}, Lcom/android/athome/picker/e;-><init>()V

    sput-object v0, Lcom/android/athome/picker/MediaOutput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 64
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    .line 65
    return-void
.end method

.method private constructor <init>(Lcom/android/athome/picker/f;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/android/athome/picker/f;->a(Lcom/android/athome/picker/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/android/athome/picker/f;->b(Lcom/android/athome/picker/f;)I

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    .line 50
    invoke-static {p1}, Lcom/android/athome/picker/f;->c(Lcom/android/athome/picker/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/android/athome/picker/f;->d(Lcom/android/athome/picker/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/android/athome/picker/f;->e(Lcom/android/athome/picker/f;)F

    move-result v0

    iput v0, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    .line 53
    invoke-static {p1}, Lcom/android/athome/picker/f;->f(Lcom/android/athome/picker/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/athome/picker/f;Lcom/android/athome/picker/e;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutput;-><init>(Lcom/android/athome/picker/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

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

.method static synthetic access$1000(Lcom/android/athome/picker/MediaOutput;)F
    .registers 2
    .parameter

    .prologue
    .line 13
    iget v0, p0, Lcom/android/athome/picker/MediaOutput;->mVolume:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 2
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/athome/picker/MediaOutput;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/athome/picker/MediaOutput;)I
    .registers 2
    .parameter

    .prologue
    .line 13
    iget v0, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/athome/picker/MediaOutput;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/athome/picker/MediaOutput;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    return-object v0
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
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    instance-of v2, p1, Lcom/android/athome/picker/MediaOutput;

    if-nez v2, :cond_7

    .line 110
    :cond_6
    :goto_6
    return v0

    .line 106
    :cond_7
    if-ne p1, p0, :cond_b

    move v0, v1

    .line 107
    goto :goto_6

    .line 109
    :cond_b
    check-cast p1, Lcom/android/athome/picker/MediaOutput;

    .line 110
    iget-object v2, p0, Lcom/android/athome/picker/MediaOutput;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/athome/picker/MediaOutput;->mType:I

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v3

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_6
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
    .parameter

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/athome/picker/MediaOutput;->mIsMuted:Z

    .line 203
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutput;->mName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutput;->mStatus:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setVolume(F)V
    .registers 2
    .parameter

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

    const-string v1, "MediaOutput(mId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .parameter
    .parameter

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
