.class final Landroid/app/enterprise/HostAuth$1;
.super Ljava/lang/Object;
.source "HostAuth.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/HostAuth;
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
        "Landroid/app/enterprise/HostAuth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/HostAuth;
    .registers 4
    .parameter "in"

    .prologue
    .line 78
    new-instance v0, Landroid/app/enterprise/HostAuth;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/HostAuth;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/HostAuth$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/app/enterprise/HostAuth$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/HostAuth;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/HostAuth;
    .registers 3
    .parameter "size"

    .prologue
    .line 82
    new-array v0, p1, [Landroid/app/enterprise/HostAuth;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Landroid/app/enterprise/HostAuth$1;->newArray(I)[Landroid/app/enterprise/HostAuth;

    move-result-object v0

    return-object v0
.end method
