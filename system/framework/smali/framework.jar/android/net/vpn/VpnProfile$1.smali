.class final Landroid/net/vpn/VpnProfile$1;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vpn/VpnProfile;
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
        "Landroid/net/vpn/VpnProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/vpn/VpnProfile;
    .registers 8
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 165
    const-class v4, Landroid/net/vpn/VpnType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnType;

    .line 166
    .local v2, type:Landroid/net/vpn/VpnType;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_21

    const/4 v0, 0x1

    .line 167
    .local v0, customized:Z
    :goto_14
    new-instance v4, Landroid/net/vpn/VpnManager;

    invoke-direct {v4, v3}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2, v0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;Z)Landroid/net/vpn/VpnProfile;

    move-result-object v1

    .line 169
    .local v1, p:Landroid/net/vpn/VpnProfile;
    if-nez v1, :cond_23

    move-object v1, v3

    .line 171
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :goto_20
    return-object v1

    .line 166
    .end local v0           #customized:Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_14

    .line 170
    .restart local v0       #customized:Z
    .restart local v1       #p:Landroid/net/vpn/VpnProfile;
    :cond_23
    invoke-virtual {v1, p1}, Landroid/net/vpn/VpnProfile;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_20
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/net/vpn/VpnProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/vpn/VpnProfile;
    .registers 3
    .parameter "size"

    .prologue
    .line 175
    new-array v0, p1, [Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/net/vpn/VpnProfile$1;->newArray(I)[Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method
