.class public Lcom/cisco/anyconnect/vpn/android/service/StateInfo;
.super Ljava/lang/Object;
.source "StateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cisco/anyconnect/vpn/android/service/StateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field private mStateString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo$1;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo$1;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cisco/anyconnect/vpn/android/service/StateInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 42
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->values()[Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mStateString:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mStateString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->mStateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return-void
.end method
