.class public Lcom/android/emailcommon/service/SearchParams;
.super Ljava/lang/Object;
.source "SearchParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/SearchParams$SearchParamsError;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/service/SearchParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mFilter:Ljava/lang/String;

.field public mIncludeChildren:Z

.field public mLimit:I

.field public final mMailboxId:J

.field public mOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    new-instance v0, Lcom/android/emailcommon/service/SearchParams$1;

    invoke-direct {v0}, Lcom/android/emailcommon/service/SearchParams$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/service/SearchParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 5
    .parameter "mailboxId"
    .parameter "filter"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 53
    iput-wide p1, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 54
    iput-object p3, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 39
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 42
    iput v1, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2e

    :goto_19
    iput-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    .line 126
    return-void

    :cond_2e
    move v0, v1

    .line 122
    goto :goto_19
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p1, p0, :cond_5

    .line 67
    :cond_4
    :goto_4
    return v1

    .line 62
    :cond_5
    if-eqz p1, :cond_b

    instance-of v3, p1, Lcom/android/emailcommon/service/SearchParams;

    if-nez v3, :cond_d

    :cond_b
    move v1, v2

    .line 63
    goto :goto_4

    :cond_d
    move-object v0, p1

    .line 66
    check-cast v0, Lcom/android/emailcommon/service/SearchParams;

    .line 67
    .local v0, os:Lcom/android/emailcommon/service/SearchParams;
    iget-wide v3, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    iget-wide v5, v0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    iget-boolean v3, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    iget-boolean v4, v0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    if-ne v3, v4, :cond_34

    iget-object v3, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    iget v4, v0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    if-eq v3, v4, :cond_4

    :cond_34
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SearchParams "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/emailcommon/service/SearchParams;->mMailboxId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    iget-boolean v0, p0, Lcom/android/emailcommon/service/SearchParams;->mIncludeChildren:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/android/emailcommon/service/SearchParams;->mLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/android/emailcommon/service/SearchParams;->mOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void

    .line 111
    :cond_1d
    const/4 v0, 0x0

    goto :goto_a
.end method
