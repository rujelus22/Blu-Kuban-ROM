.class public final Lbc/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lbc/u;

    invoke-direct {v0}, Lbc/u;-><init>()V

    sput-object v0, Lbc/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbc/t;->a:I

    iput p2, p0, Lbc/t;->b:I

    return-void
.end method


# virtual methods
.method public a(Lbc/t;)I
    .registers 4

    iget v0, p0, Lbc/t;->a:I

    iget v1, p1, Lbc/t;->a:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_8

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lbc/t;->b:I

    iget v1, p1, Lbc/t;->b:I

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public a(II)Z
    .registers 4

    iget v0, p0, Lbc/t;->a:I

    if-ne p1, v0, :cond_a

    iget v0, p0, Lbc/t;->b:I

    if-ne p2, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lbc/t;

    invoke-virtual {p0, p1}, Lbc/t;->a(Lbc/t;)I

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

    instance-of v0, p1, Lbc/t;

    if-eqz v0, :cond_f

    check-cast p1, Lbc/t;

    iget v0, p1, Lbc/t;->a:I

    iget v1, p1, Lbc/t;->b:I

    invoke-virtual {p0, v0, v1}, Lbc/t;->a(II)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lbc/t;->a:I

    add-int/lit16 v0, v0, 0x66b

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbc/t;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "stageIndex"

    iget v2, p0, Lbc/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "stageSegmentIndex"

    iget v2, p0, Lbc/t;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lbc/t;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lbc/t;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
