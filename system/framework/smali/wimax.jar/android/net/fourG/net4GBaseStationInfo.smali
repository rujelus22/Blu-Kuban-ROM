.class public abstract Landroid/net/fourG/net4GBaseStationInfo;
.super Ljava/lang/Object;
.source "net4GBaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;
    }
.end annotation


# instance fields
.field protected m_bIsConnected:Z

.field protected m_lNspId:I

.field protected m_nCINR:I

.field protected m_nFrequencyDownlink:J

.field protected m_nFrequencyUplink:J

.field protected m_nRSSI:I

.field protected m_strBSID:Ljava/lang/String;

.field protected networkType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    return-object v0
.end method

.method public getCINR()I
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    if-nez v0, :cond_6

    .line 109
    const/4 v0, -0x1

    .line 110
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nCINR:I

    goto :goto_5
.end method

.method public getFrequencyDownlink()J
    .registers 3

    .prologue
    .line 67
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    if-nez v0, :cond_7

    .line 68
    const-wide/16 v0, -0x1

    .line 69
    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J

    goto :goto_6
.end method

.method public getFrequencyUplink()J
    .registers 3

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    if-nez v0, :cond_7

    .line 62
    const-wide/16 v0, -0x1

    .line 63
    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyUplink:J

    goto :goto_6
.end method

.method getLatitude()F
    .registers 2

    .prologue
    .line 133
    const v0, 0x4479c000

    return v0
.end method

.method getLongitude()F
    .registers 2

    .prologue
    .line 130
    const v0, 0x4479c000

    return v0
.end method

.method public getNetworkType()Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    if-nez v0, :cond_7

    .line 46
    sget-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    .line 56
    :goto_6
    return-object v0

    .line 48
    :cond_7
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->networkType:I

    packed-switch v0, :pswitch_data_18

    .line 56
    sget-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_UNKNOWN:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    goto :goto_6

    .line 50
    :pswitch_f
    sget-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_HOME:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    goto :goto_6

    .line 52
    :pswitch_12
    sget-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_PARTNER:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    goto :goto_6

    .line 54
    :pswitch_15
    sget-object v0, Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;->NSP_NETWORK_TYPE_ROAMING_PARTNER:Landroid/net/fourG/net4GBaseStationInfo$NSP_NETWORK_TYPE;

    goto :goto_6

    .line 48
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public getNspId()I
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    if-nez v0, :cond_6

    .line 124
    const/4 v0, -0x1

    .line 125
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    goto :goto_5
.end method

.method public getRSSI()I
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    if-nez v0, :cond_6

    .line 98
    const/4 v0, -0x1

    .line 99
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nRSSI:I

    goto :goto_5
.end method

.method getRTD()I
    .registers 2

    .prologue
    .line 136
    const/4 v0, -0x1

    return v0
.end method

.method getRTDMeasurementAge()I
    .registers 2

    .prologue
    .line 139
    const/4 v0, -0x1

    return v0
.end method

.method getRTDMeasurementError()I
    .registers 2

    .prologue
    .line 142
    const/4 v0, -0x1

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    return v0
.end method

.method setIsConnected(Z)V
    .registers 2
    .parameter "bIsConnected"

    .prologue
    .line 81
    iput-boolean p1, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "net4GBaseStationInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 150
    .local v0, none:Ljava/lang/String;
    const-string v2, ", BSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    if-nez v3, :cond_5c

    .end local v0           #none:Ljava/lang/String;
    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", IsConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v2, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5f

    const-string v2, "true"

    :goto_24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nRSSI:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", CINR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nCINR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Nsp ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 150
    .restart local v0       #none:Ljava/lang/String;
    :cond_5c
    iget-object v0, p0, Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;

    goto :goto_13

    .end local v0           #none:Ljava/lang/String;
    :cond_5f
    const-string v2, "false"

    goto :goto_24
.end method
