.class public Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;
.super Lcom/cisco/anyconnect/vpn/jni/RouteInfo;
.source "RouteInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/RouteInfoParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/RouteInfo;)V
    .registers 3
    .parameter "routeInfo"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;-><init>()V

    .line 40
    if-eqz p1, :cond_d

    .line 42
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->network:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->network:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->subnet:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->subnet:Ljava/lang/String;

    .line 45
    :cond_d
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->network:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->subnet:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->network:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->subnet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
