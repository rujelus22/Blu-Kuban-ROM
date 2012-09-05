.class final Ld/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Ld/Z;
    .registers 4

    new-instance v0, Ld/Z;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ld/Z;-><init>(Landroid/os/Parcel;Ld/aa;)V

    return-object v0
.end method

.method public a(I)[Ld/Z;
    .registers 3

    new-array v0, p1, [Ld/Z;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Ld/aa;->a(Landroid/os/Parcel;)Ld/Z;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Ld/aa;->a(I)[Ld/Z;

    move-result-object v0

    return-object v0
.end method
