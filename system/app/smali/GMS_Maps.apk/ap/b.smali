.class final LaP/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)LaP/a;
    .registers 5
    .parameter

    .prologue
    .line 94
    new-instance v1, LaP/a;

    const-class v0, LaP/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, LaP/t;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-direct {v1, v0, v2}, LaP/a;-><init>(LaP/t;F)V

    return-object v1
.end method

.method public a(I)[LaP/a;
    .registers 3
    .parameter

    .prologue
    .line 99
    new-array v0, p1, [LaP/a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, LaP/b;->a(Landroid/os/Parcel;)LaP/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, LaP/b;->a(I)[LaP/a;

    move-result-object v0

    return-object v0
.end method
