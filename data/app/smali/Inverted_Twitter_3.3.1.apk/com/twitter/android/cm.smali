.class public final Lcom/twitter/android/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/twitter/android/cn;

    invoke-direct {v0}, Lcom/twitter/android/cn;-><init>()V

    sput-object v0, Lcom/twitter/android/cm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/cm;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/cm;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    iput p2, p0, Lcom/twitter/android/cm;->b:I

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/twitter/android/cm;

    iget-object v2, p0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4

    :cond_25
    iget-object v2, p1, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    if-nez v2, :cond_23

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/cm;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/twitter/android/cm;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
