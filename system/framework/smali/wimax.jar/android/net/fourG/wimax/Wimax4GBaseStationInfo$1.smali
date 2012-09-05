.class final Landroid/net/fourG/wimax/Wimax4GBaseStationInfo$1;
.super Ljava/lang/Object;
.source "Wimax4GBaseStationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
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
        "Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 5
    .parameter "in"

    .prologue
    .line 134
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;-><init>()V

    .line 135
    .local v0, info:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->m_nCINR:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$002(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->m_lNspId:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$102(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strRealm:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$202(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->m_nRSSI:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$302(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->m_strBSID:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$402(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lNapId:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$502(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_lPreamble:J
    invoke-static {v0, v1, v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$602(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;J)J

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_nVendorId:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$702(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_strNetworkName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$802(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyUplink:J
    invoke-static {v0, v1, v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$902(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;J)J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->m_nFrequencyDownlink:J
    invoke-static {v0, v1, v2}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$1002(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;J)J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->networkType:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$1102(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;I)I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->m_VendorInfo:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$1202(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_6b

    .line 149
    const/4 v1, 0x0

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$1302(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Z)Z

    .line 152
    :goto_6a
    return-object v0

    .line 151
    :cond_6b
    const/4 v1, 0x1

    #setter for: Landroid/net/fourG/net4GBaseStationInfo;->m_bIsConnected:Z
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;->access$1402(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;Z)Z

    goto :goto_6a
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 156
    new-array v0, p1, [Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo$1;->newArray(I)[Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v0

    return-object v0
.end method
