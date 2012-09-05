.class public Lcom/sec/print/mobileprint/df/MFPDevice;
.super Ljava/lang/Object;
.source "MFPDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Lcom/sec/print/mobileprint/df/MFPDevice$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/df/MFPDevice$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/df/MFPDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/df/MFPDevice;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/df/MFPDevice$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/df/MFPDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->port:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->name:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->host:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->note:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->port:I

    .line 73
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2
    .parameter "host"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->host:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .registers 2
    .parameter "note"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->note:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 58
    iput p1, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->port:I

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->note:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/sec/print/mobileprint/df/MFPDevice;->port:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/df/MFPDevice;->writeToParcel(Landroid/os/Parcel;)V

    .line 82
    return-void
.end method
