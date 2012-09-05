.class public Landroid/net/fourG/wimax/Wimax4GInfo;
.super Landroid/net/fourG/net4GInfo;
.source "Wimax4GInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_nFrequency:I

.field private m_nNSPID:I

.field private m_strConnectionTime:Ljava/lang/String;

.field private m_strNAPID:Ljava/lang/String;

.field private m_wm4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 178
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GInfo$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GInfo$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/net/fourG/net4GInfo;-><init>()V

    .line 36
    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    .line 37
    const-string v0, "000000"

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    .line 38
    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    .line 39
    const-string v0, "00:00:00"

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    .line 40
    sget-object v0, Landroid/net/fourG/net4GSupplicantState;->UNINITIALIZED:Landroid/net/fourG/net4GSupplicantState;

    iput-object v0, p0, Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    .line 41
    return-void
.end method

.method static synthetic access$002(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_strMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;)Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    sput-object p0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    return-object p0
.end method

.method static synthetic access$302(Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;)Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    sput-object p0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    return-object p0
.end method

.method static synthetic access$402(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/fourG/wimax/Wimax4GInfo;Landroid/net/fourG/net4GSupplicantState;)Landroid/net/fourG/net4GSupplicantState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic get4GBaseStationInfoServing()Landroid/net/fourG/net4GBaseStationInfo;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GInfo;->get4GBaseStationInfoServing()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public get4GBaseStationInfoServing()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_wm4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    return-object v0
.end method

.method public getConnectionTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFREQ()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    return v0
.end method

.method public getNAPID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    return-object v0
.end method

.method public getNSPID()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    return v0
.end method

.method public getSupplicantState()Landroid/net/fourG/net4GSupplicantState;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    return-object v0
.end method

.method public set4GBaseStationInfo(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 110
    if-nez p1, :cond_3

    .line 114
    :goto_2
    return-void

    .line 112
    :cond_3
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_net4GBaseStationInfo:Landroid/net/fourG/net4GBaseStationInfo;

    .line 113
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_wm4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    goto :goto_2
.end method

.method public setBSID(Ljava/lang/String;)V
    .registers 9
    .parameter "strBSID"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;

    .line 53
    if-eqz p1, :cond_3a

    .line 54
    new-array v0, v6, [C

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v3

    const/4 v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v5

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 56
    .local v0, cNAPID:[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    .line 60
    .end local v0           #cNAPID:[C
    :goto_39
    return-void

    .line 58
    :cond_3a
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    goto :goto_39
.end method

.method public setConnectionTime(Ljava/lang/String;)V
    .registers 2
    .parameter "ConnectionTime"

    .prologue
    .line 75
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setFREQ(I)V
    .registers 2
    .parameter "FREQ"

    .prologue
    .line 67
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    .line 68
    return-void
.end method

.method public setNSPID(I)V
    .registers 2
    .parameter "NSPID"

    .prologue
    .line 44
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    .line 45
    return-void
.end method

.method public setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V
    .registers 2
    .parameter "stateName"

    .prologue
    .line 98
    iput-object p1, p0, Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Wimax4GInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 121
    .local v0, none:Ljava/lang/String;
    const-string v2, ", BSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;

    if-nez v2, :cond_db

    move-object v2, v0

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GInfo;->m_nRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", CINR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GInfo;->m_nCinr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", net4GSupplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    if-nez v2, :cond_df

    move-object v2, v0

    :goto_3b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", IP Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GInfo;->m_nIpAddress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GInfo;->m_nLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", LINK_STATE_DETAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    if-nez v2, :cond_e3

    move-object v2, v0

    :goto_62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", LINK_STATE_REASON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v2, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    if-nez v2, :cond_e7

    move-object v2, v0

    :goto_71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/net4GInfo;->m_strMacAddress:Ljava/lang/String;

    if-nez v3, :cond_ea

    .end local v0           #none:Ljava/lang/String;
    :goto_7f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GInfo;->m_nNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Tx Power: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GInfo;->m_nTxPower:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", 4G State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GInfo;->m_n4GState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", NSP ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", NAP ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Connection Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 121
    .restart local v0       #none:Ljava/lang/String;
    :cond_db
    iget-object v2, p0, Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;

    goto/16 :goto_14

    :cond_df
    iget-object v2, p0, Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    goto/16 :goto_3b

    :cond_e3
    sget-object v2, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    goto/16 :goto_62

    :cond_e7
    sget-object v2, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    goto :goto_71

    :cond_ea
    iget-object v0, p0, Landroid/net/fourG/net4GInfo;->m_strMacAddress:Ljava/lang/String;

    goto :goto_7f
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 150
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nCinr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nIpAddress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_nTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/net/fourG/net4GInfo;->m_n4GState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nNSPID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_nFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v0, p0, Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/net/fourG/net4GInfo;->m_strMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    if-eqz v0, :cond_61

    .line 163
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateDetail:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    :goto_44
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    if-eqz v0, :cond_6f

    .line 168
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GInfo;->mLinkStateReason:Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    invoke-virtual {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    :goto_51
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/fourG/net4GSupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 175
    return-void

    .line 165
    :cond_61
    const-string v0, "LINK_ST_DETAIL_UNDEFINED"

    invoke-static {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_44

    .line 170
    :cond_6f
    const-string v0, "LINK_ST_REASON_FAILURE_UNKNOWN_CAUSE"

    invoke-static {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;->valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_51
.end method
