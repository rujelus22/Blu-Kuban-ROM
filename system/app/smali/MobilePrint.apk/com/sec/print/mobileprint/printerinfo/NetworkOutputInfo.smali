.class public Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;
.super Ljava/lang/Object;
.source "NetworkOutputInfo.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ipAddr:Ljava/lang/String;

.field portNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "ipAddr"
    .parameter "portNum"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->ipAddr:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->portNum:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getIpAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->ipAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getPortNum()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->portNum:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->ipAddr:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->portNum:I

    .line 80
    return-void
.end method

.method public setIpAddr(Ljava/lang/String;)V
    .registers 2
    .parameter "ipAddr"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->ipAddr:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPortNum(I)V
    .registers 2
    .parameter "portNum"

    .prologue
    .line 61
    iput p1, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->portNum:I

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->ipAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/sec/print/mobileprint/printerinfo/NetworkOutputInfo;->portNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
