.class final Ld/ac;
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
.method public a(Landroid/os/Parcel;)Ld/ab;
    .registers 4

    new-instance v0, Ld/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ld/ab;-><init>(Landroid/os/Parcel;Ld/ac;)V

    return-object v0
.end method

.method public a(I)[Ld/ab;
    .registers 3

    new-array v0, p1, [Ld/ab;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Ld/ac;->a(Landroid/os/Parcel;)Ld/ab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Ld/ac;->a(I)[Ld/ab;

    move-result-object v0

    return-object v0
.end method
