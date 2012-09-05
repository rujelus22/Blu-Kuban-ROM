.class public Lcom/google/android/apps/plus/content/EsAccount;
.super Ljava/lang/Object;
.source "EsAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayName:Ljava/lang/String;

.field private final mIndex:I

.field private final mIsChild:Z

.field private final mName:Ljava/lang/String;

.field private final mRealTimeChatParticipantId:Ljava/lang/String;

.field private final mUserId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/apps/plus/content/EsAccount$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/content/EsAccount$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/content/EsAccount;->mName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/content/EsAccount;->mRealTimeChatParticipantId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/content/EsAccount;->mDisplayName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIndex:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_3c

    :goto_39
    iput-boolean v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIsChild:Z

    .line 50
    return-void

    .line 49
    :cond_3c
    const/4 v0, 0x0

    goto :goto_39
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/content/EsAccount$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;ZI)V
    .registers 10
    .parameter "name"
    .parameter "userId"
    .parameter "displayName"
    .parameter "isChild"
    .parameter "index"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsAccount;->mName:Ljava/lang/String;

    .line 33
    iput-wide p2, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mRealTimeChatParticipantId:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/google/android/apps/plus/content/EsAccount;->mDisplayName:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIsChild:Z

    .line 37
    iput p6, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIndex:I

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p1, :cond_4

    .line 145
    .end local p1
    :cond_3
    :goto_3
    return v0

    .line 142
    .restart local p1
    :cond_4
    instance-of v1, p1, Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_3

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mName:Ljava/lang/String;

    check-cast p1, Lcom/google/android/apps/plus/content/EsAccount;

    .end local p1
    iget-object v1, p1, Lcom/google/android/apps/plus/content/EsAccount;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "g:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealTimeChatParticipantId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mRealTimeChatParticipantId:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsafeUserId()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    return-wide v0
.end method

.method public getUserId()J
    .registers 5

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "User id not yet set. Out of box not yet done?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_10
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    return-wide v0
.end method

.method public hasUserId()Z
    .registers 5

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isChild()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIsChild:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 155
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "Account name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsAccount;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", Gaia id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, ", Display name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", Plotnikov index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-wide v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/EsAccount;->mIsChild:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return-void

    .line 179
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method
