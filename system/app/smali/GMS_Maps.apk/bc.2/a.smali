.class public final Lbc/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lbc/t;

.field public final b:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbc/b;

    invoke-direct {v0}, Lbc/b;-><init>()V

    sput-object v0, Lbc/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIF)V
    .registers 5

    new-instance v0, Lbc/t;

    invoke-direct {v0, p1, p2}, Lbc/t;-><init>(II)V

    invoke-direct {p0, v0, p3}, Lbc/a;-><init>(Lbc/t;F)V

    return-void
.end method

.method public constructor <init>(Lbc/t;F)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f80

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_2b

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress out of range [0.0, 1.0] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iput-object p1, p0, Lbc/a;->a:Lbc/t;

    iput p2, p0, Lbc/a;->b:F

    return-void
.end method


# virtual methods
.method public a(Lbc/a;)I
    .registers 4

    iget-object v0, p0, Lbc/a;->a:Lbc/t;

    iget-object v1, p1, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v1}, Lbc/t;->a(Lbc/t;)I

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lbc/a;->b:F

    iget v1, p1, Lbc/a;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_a
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lbc/a;

    invoke-virtual {p0, p1}, Lbc/a;->a(Lbc/a;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lbc/a;

    if-eqz v1, :cond_e

    check-cast p1, Lbc/a;

    invoke-virtual {p0, p1}, Lbc/a;->a(Lbc/a;)I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0}, Lbc/t;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x899

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbc/a;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "index"

    iget-object v2, p0, Lbc/a;->a:Lbc/t;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "progress"

    iget v2, p0, Lbc/a;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lbc/a;->a:Lbc/t;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lbc/a;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
