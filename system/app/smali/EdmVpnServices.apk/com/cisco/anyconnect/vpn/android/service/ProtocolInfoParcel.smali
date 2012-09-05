.class public Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;
.super Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;
.source "ProtocolInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ProtocolInfoParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;)V
    .registers 3
    .parameter "protocolInfo"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;-><init>()V

    .line 43
    if-eqz p1, :cond_19

    .line 45
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->state:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->protocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->protocol:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->cipher:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->cipher:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->compression:Ljava/lang/String;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->compression:Ljava/lang/String;

    .line 49
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->isActive:Z

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->isActive:Z

    .line 51
    :cond_19
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->state:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->protocol:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->cipher:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->compression:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_22

    :goto_1f
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->isActive:Z

    .line 39
    return-void

    .line 38
    :cond_22
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->cipher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->compression:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;->isActive:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void

    .line 63
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method
