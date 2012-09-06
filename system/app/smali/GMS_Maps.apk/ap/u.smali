.class final LaP/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)LaP/t;
    .registers 5
    .parameter

    .prologue
    .line 100
    new-instance v0, LaP/t;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, LaP/t;-><init>(II)V

    return-object v0
.end method

.method public a(I)[LaP/t;
    .registers 3
    .parameter

    .prologue
    .line 104
    new-array v0, p1, [LaP/t;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, LaP/u;->a(Landroid/os/Parcel;)LaP/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, LaP/u;->a(I)[LaP/t;

    move-result-object v0

    return-object v0
.end method
