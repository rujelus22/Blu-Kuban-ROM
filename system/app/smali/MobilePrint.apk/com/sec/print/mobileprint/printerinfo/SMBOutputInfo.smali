.class public Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;
.super Ljava/lang/Object;
.source "SMBOutputInfo.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printerinfo/IOutputInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field selectedPrinterDomain:Ljava/lang/String;

.field selectedPrinterIP:Ljava/lang/String;

.field selectedPrinterPassword:Ljava/lang/String;

.field selectedPrinterShareName:Ljava/lang/String;

.field selectedPrinterUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 155
    new-instance v0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "selectedPrinterDomain"
    .parameter "selectedPrinterUserName"
    .parameter "selectedPrinterPassword"
    .parameter "selectedPrinterIP"
    .parameter "selectedPrinterShareName"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterDomain:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterUserName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterPassword:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterIP:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterShareName:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedPrinterDomain()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedPrinterIP()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterIP:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedPrinterPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedPrinterShareName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterShareName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedPrinterUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterUserName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterDomain:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterUserName:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterPassword:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterIP:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterShareName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setSelectedPrinterDomain(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedPrinterDomain"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterDomain:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSelectedPrinterIP(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedPrinterIP"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterIP:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setSelectedPrinterPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedPrinterPassword"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterPassword:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setSelectedPrinterShareName(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedPrinterShareName"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterShareName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSelectedPrinterUserName(Ljava/lang/String;)V
    .registers 2
    .parameter "selectedPrinterUserName"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterUserName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterIP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/sec/print/mobileprint/printerinfo/SMBOutputInfo;->selectedPrinterShareName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return-void
.end method
