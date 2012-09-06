.class final Lcom/google/googlenav/ui/bF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/googlenav/ui/bE;
    .registers 4
    .parameter

    .prologue
    .line 923
    new-instance v0, Lcom/google/googlenav/ui/bE;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/bE;-><init>(Landroid/os/Parcel;Lcom/google/googlenav/ui/bB;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/googlenav/ui/bE;
    .registers 3
    .parameter

    .prologue
    .line 928
    new-array v0, p1, [Lcom/google/googlenav/ui/bE;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 920
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bF;->a(Landroid/os/Parcel;)Lcom/google/googlenav/ui/bE;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 920
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bF;->a(I)[Lcom/google/googlenav/ui/bE;

    move-result-object v0

    return-object v0
.end method
