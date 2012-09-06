.class public final Lcom/twitter/android/platform/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Z

.field public d:I

.field public e:I

.field public f:Lcom/twitter/android/platform/f;

.field public g:Lcom/twitter/android/platform/f;

.field public h:Lcom/twitter/android/platform/f;

.field public i:Lcom/twitter/android/platform/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/platform/e;

    invoke-direct {v0}, Lcom/twitter/android/platform/e;-><init>()V

    sput-object v0, Lcom/twitter/android/platform/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/platform/d;->b:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_3d

    :goto_16
    iput-boolean v0, p0, Lcom/twitter/android/platform/d;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/platform/d;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/platform/d;->e:I

    invoke-static {p1}, Lcom/twitter/android/platform/d;->a(Landroid/os/Parcel;)Lcom/twitter/android/platform/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    invoke-static {p1}, Lcom/twitter/android/platform/d;->a(Landroid/os/Parcel;)Lcom/twitter/android/platform/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    invoke-static {p1}, Lcom/twitter/android/platform/d;->a(Landroid/os/Parcel;)Lcom/twitter/android/platform/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    invoke-static {p1}, Lcom/twitter/android/platform/d;->a(Landroid/os/Parcel;)Lcom/twitter/android/platform/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/platform/d;->h:Lcom/twitter/android/platform/f;

    return-void

    :cond_3d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/twitter/android/platform/d;->b:J

    iput-boolean p4, p0, Lcom/twitter/android/platform/d;->c:Z

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/twitter/android/platform/f;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_39

    :goto_7
    if-eqz v0, :cond_3b

    new-instance v0, Lcom/twitter/android/platform/f;

    invoke-direct {v0}, Lcom/twitter/android/platform/f;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/twitter/android/platform/f;->b:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/twitter/android/platform/f;->a:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/twitter/android/platform/f;->d:J

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/twitter/android/platform/f;->e:J

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/twitter/android/platform/f;->g:I

    :goto_38
    return-object v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_7

    :cond_3b
    const/4 v0, 0x0

    goto :goto_38
.end method

.method private static a(Landroid/os/Parcel;Lcom/twitter/android/platform/f;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_30

    move v2, v0

    :goto_5
    if-eqz v2, :cond_32

    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v2, :cond_2f

    iget v0, p1, Lcom/twitter/android/platform/f;->b:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Lcom/twitter/android/platform/f;->a:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p1, Lcom/twitter/android/platform/f;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/twitter/android/platform/f;->d:J

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p1, Lcom/twitter/android/platform/f;->e:J

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p1, Lcom/twitter/android/platform/f;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p1, Lcom/twitter/android/platform/f;->g:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2f
    return-void

    :cond_30
    move v2, v1

    goto :goto_5

    :cond_32
    move v0, v1

    goto :goto_7
.end method


# virtual methods
.method public final a()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    iget v0, v0, Lcom/twitter/android/platform/f;->b:I

    add-int/lit8 v0, v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    iget v2, v2, Lcom/twitter/android/platform/f;->b:I

    add-int/2addr v0, v2

    :cond_14
    iget-object v2, p0, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    iget v2, v2, Lcom/twitter/android/platform/f;->b:I

    add-int/2addr v0, v2

    :cond_1d
    iget-object v2, p0, Lcom/twitter/android/platform/d;->h:Lcom/twitter/android/platform/f;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/twitter/android/platform/d;->h:Lcom/twitter/android/platform/f;

    iget v2, v2, Lcom/twitter/android/platform/f;->b:I

    add-int/2addr v0, v2

    :cond_26
    if-lez v0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1

    :cond_2a
    move v0, v1

    goto :goto_b
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/platform/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/twitter/android/platform/d;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/twitter/android/platform/d;->c:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/platform/d;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/twitter/android/platform/d;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/twitter/android/platform/d;->f:Lcom/twitter/android/platform/f;

    invoke-static {p1, v0}, Lcom/twitter/android/platform/d;->a(Landroid/os/Parcel;Lcom/twitter/android/platform/f;)V

    iget-object v0, p0, Lcom/twitter/android/platform/d;->g:Lcom/twitter/android/platform/f;

    invoke-static {p1, v0}, Lcom/twitter/android/platform/d;->a(Landroid/os/Parcel;Lcom/twitter/android/platform/f;)V

    iget-object v0, p0, Lcom/twitter/android/platform/d;->i:Lcom/twitter/android/platform/f;

    invoke-static {p1, v0}, Lcom/twitter/android/platform/d;->a(Landroid/os/Parcel;Lcom/twitter/android/platform/f;)V

    iget-object v0, p0, Lcom/twitter/android/platform/d;->h:Lcom/twitter/android/platform/f;

    invoke-static {p1, v0}, Lcom/twitter/android/platform/d;->a(Landroid/os/Parcel;Lcom/twitter/android/platform/f;)V

    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_f
.end method
