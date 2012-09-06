.class public final Lcom/twitter/android/api/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/api/f;

    invoke-direct {v0}, Lcom/twitter/android/api/f;-><init>()V

    sput-object v0, Lcom/twitter/android/api/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_2b

    :goto_a
    iput-boolean v0, p0, Lcom/twitter/android/api/e;->a:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/api/e;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/e;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/e;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/api/e;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/e;->f:I

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(ZJIIJI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/twitter/android/api/e;->a:Z

    iput-wide p2, p0, Lcom/twitter/android/api/e;->b:J

    iput p4, p0, Lcom/twitter/android/api/e;->c:I

    iput p5, p0, Lcom/twitter/android/api/e;->d:I

    iput-wide p6, p0, Lcom/twitter/android/api/e;->e:J

    iput p8, p0, Lcom/twitter/android/api/e;->f:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-boolean v0, p0, Lcom/twitter/android/api/e;->a:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/twitter/android/api/e;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twitter/android/api/e;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/api/e;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/twitter/android/api/e;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/twitter/android/api/e;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_5
.end method
