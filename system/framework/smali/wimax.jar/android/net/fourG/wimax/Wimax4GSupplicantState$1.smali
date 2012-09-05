.class final Landroid/net/fourG/wimax/Wimax4GSupplicantState$1;
.super Ljava/lang/Object;
.source "Wimax4GSupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GSupplicantState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/fourG/wimax/Wimax4GSupplicantState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GSupplicantState;
    .registers 3
    .parameter "in"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GSupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GSupplicantState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/Wimax4GSupplicantState;
    .registers 3
    .parameter "size"

    .prologue
    .line 112
    new-array v0, p1, [Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GSupplicantState$1;->newArray(I)[Landroid/net/fourG/wimax/Wimax4GSupplicantState;

    move-result-object v0

    return-object v0
.end method
