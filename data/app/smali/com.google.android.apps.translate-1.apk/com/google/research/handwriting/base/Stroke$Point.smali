.class public final Lcom/google/research/handwriting/base/Stroke$Point;
.super Ljava/lang/Object;
.source "Stroke.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/research/handwriting/base/Stroke$Point;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final p:F

.field public final t:F

.field public final x:F

.field public final y:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    new-instance v0, Lcom/google/research/handwriting/base/Stroke$Point$1;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/Stroke$Point$1;-><init>()V

    sput-object v0, Lcom/google/research/handwriting/base/Stroke$Point;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 53
    const/high16 v0, -0x4080

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/research/handwriting/base/Stroke$Point;-><init>(FFFF)V

    .line 54
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "t"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/research/handwriting/base/Stroke$Point;-><init>(FFFF)V

    .line 58
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "t"
    .parameter "p"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    .line 70
    iput p2, p0, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    .line 71
    iput p3, p0, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    .line 72
    iput p4, p0, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 77
    const-string v0, "(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 94
    iget v0, p0, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 95
    iget v0, p0, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 96
    iget v0, p0, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 97
    iget v0, p0, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    return-void
.end method
