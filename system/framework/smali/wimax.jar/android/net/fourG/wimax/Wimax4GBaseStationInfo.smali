.class public Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
.super Landroid/net/fourG/net4GBaseStationInfo;
.source "Wimax4GBaseStationInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_VendorInfo:Ljava/lang/String;

.field private m_lNapId:Ljava/lang/String;

.field private m_lPreamble:J

.field private m_nCinrInDB:I

.field private m_nIsActivated:I

.field private m_nRssiInDBm:I

.field private m_nVendorId:I

.field private m_strNetworkName:Ljava/lang/String;

.field private m_strRealm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/net/fourG/net4GBaseStationInfo;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic access$002(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nCINR:I

    return p1
.end method

.method static synthetic access$1002(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    return p1
.end method

.method static synthetic access$1102(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->networkType:I

    return p1
.end method

.method static synthetic access$1202(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    return p1
.end method

.method static synthetic access$1402(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    return p1
.end method

.method static synthetic access$202(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strRealm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nRSSI:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J

    return-wide p1
.end method

.method static synthetic access$702(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I

    return p1
.end method

.method static synthetic access$802(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strNetworkName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-wide p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyUplink:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)Z
    .registers 6
    .parameter "info"

    .prologue
    .line 164
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    iget v1, p1, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strRealm:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-wide v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J

    iget-wide v2, p1, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_64

    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I

    iget v1, p1, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strNetworkName:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-wide v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyUplink:J

    iget-wide v2, p1, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyUplink:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_64

    iget-wide v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J

    iget-wide v2, p1, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_64

    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->networkType:I

    iget v1, p1, Landroid/net/fourG/net4GBaseStationInfo;->networkType:I

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    iget-boolean v1, p1, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    if-ne v0, v1, :cond_64

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_63
    return v0

    :cond_64
    const/4 v0, 0x0

    goto :goto_63
.end method

.method public getNapId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    return-object v0
.end method

.method public getNspId()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    return v0
.end method

.method public getNspName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method getPreamble()J
    .registers 3

    .prologue
    .line 40
    iget-wide v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J

    return-wide v0
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strRealm:Ljava/lang/String;

    return-object v0
.end method

.method getVendorID()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I

    return v0
.end method

.method public getVendorInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isActivated()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    return v0
.end method

.method public setNapId(Ljava/lang/String;)V
    .registers 2
    .parameter "lNapID"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setValue(IILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;JILjava/lang/String;III)V
    .registers 18
    .parameter "Cinr"
    .parameter "NspId"
    .parameter "Realm"
    .parameter "Rssi"
    .parameter "IsConnected"
    .parameter "BaseStationId"
    .parameter "NapId"
    .parameter "lPreamble"
    .parameter "nVendorID"
    .parameter "nspName"
    .parameter "nFrequencyUplink"
    .parameter "nFrequencyDowlink"
    .parameter "NetworkType"

    .prologue
    .line 74
    iput p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nCINR:I

    .line 75
    iput p2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    .line 76
    iput-object p3, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strRealm:Ljava/lang/String;

    .line 77
    iput p4, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nRSSI:I

    .line 78
    iput-object p6, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    .line 80
    iput-boolean p5, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    .line 81
    iput-wide p8, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J

    .line 82
    iput p10, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I

    .line 83
    iput-object p11, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strNetworkName:Ljava/lang/String;

    .line 84
    int-to-long v1, p12

    iput-wide v1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyUplink:J

    .line 85
    move/from16 v0, p13

    int-to-long v1, v0

    iput-wide v1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J

    .line 86
    move/from16 v0, p14

    iput v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->networkType:I

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NspInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "m_nCINR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nCINR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_lNspId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_strRealm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strRealm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nRSSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nRSSI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_bIsConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_strBSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_strNapId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_lPreamble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nVendorID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_VendorInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nFrequencyUplink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_VendorInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyUplink:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_nFrequencyDownlink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 111
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nCINR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nRSSI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-wide v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-wide v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyUplink:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-wide v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->networkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    if-eqz v0, :cond_4a

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    :goto_49
    return-void

    .line 127
    :cond_4a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49
.end method
