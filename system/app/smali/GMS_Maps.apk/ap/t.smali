.class public final LaP/t;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .prologue
    .line 97
    new-instance v0, LaP/u;

    invoke-direct {v0}, LaP/u;-><init>()V

    sput-object v0, LaP/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, LaP/t;->a:I

    .line 41
    iput p2, p0, LaP/t;->b:I

    .line 42
    return-void
.end method


# virtual methods
.method public a(LaP/t;)I
    .registers 4
    .parameter

    .prologue
    .line 71
    iget v0, p0, LaP/t;->a:I

    iget v1, p1, LaP/t;->a:I

    sub-int/2addr v0, v1

    .line 72
    if-eqz v0, :cond_8

    .line 75
    :goto_7
    return v0

    :cond_8
    iget v0, p0, LaP/t;->b:I

    iget v1, p1, LaP/t;->b:I

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    iget v0, p0, LaP/t;->a:I

    if-ne p1, v0, :cond_a

    iget v0, p0, LaP/t;->b:I

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
    .parameter

    .prologue
    .line 23
    check-cast p1, LaP/t;

    invoke-virtual {p0, p1}, LaP/t;->a(LaP/t;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 46
    instance-of v0, p1, LaP/t;

    if-eqz v0, :cond_f

    .line 47
    check-cast p1, LaP/t;

    .line 48
    iget v0, p1, LaP/t;->a:I

    iget v1, p1, LaP/t;->b:I

    invoke-virtual {p0, v0, v1}, LaP/t;->a(II)Z

    move-result v0

    .line 50
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 63
    .line 64
    iget v0, p0, LaP/t;->a:I

    add-int/lit16 v0, v0, 0x66b

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LaP/t;->b:I

    add-int/2addr v0, v1

    .line 66
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "stageIndex"

    iget v2, p0, LaP/t;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "stageSegmentIndex"

    iget v2, p0, LaP/t;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    iget v0, p0, LaP/t;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, LaP/t;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return-void
.end method
