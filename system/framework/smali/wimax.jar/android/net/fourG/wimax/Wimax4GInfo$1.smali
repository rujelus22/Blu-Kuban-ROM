.class final Landroid/net/fourG/wimax/Wimax4GInfo$1;
.super Ljava/lang/Object;
.source "Wimax4GInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GInfo;
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
        "Landroid/net/fourG/wimax/Wimax4GInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 4
    .parameter "in"

    .prologue
    .line 181
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GInfo;-><init>()V

    .line 182
    .local v0, info:Landroid/net/fourG/wimax/Wimax4GInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setLinkSpeed(I)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setNetworkId(I)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->set4GState(I)V

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setNSPID(I)V

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/net4GInfo;->m_strBSID:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->access$002(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/net4GInfo;->m_strMacAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->access$102(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    move-result-object v1

    invoke-static {v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->access$202(Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;)Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;->valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    move-result-object v1

    invoke-static {v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->access$302(Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;)Landroid/net/fourG/net4GInfo$LINK_STATE_REASON;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GInfo;->m_strNAPID:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->access$402(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GInfo;->m_strConnectionTime:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->access$502(Landroid/net/fourG/wimax/Wimax4GInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    sget-object v1, Landroid/net/fourG/net4GSupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/net4GSupplicantState;

    #setter for: Landroid/net/fourG/net4GInfo;->m_net4GSupplicantState:Landroid/net/fourG/net4GSupplicantState;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->access$602(Landroid/net/fourG/wimax/Wimax4GInfo;Landroid/net/fourG/net4GSupplicantState;)Landroid/net/fourG/net4GSupplicantState;

    .line 198
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 202
    new-array v0, p1, [Landroid/net/fourG/wimax/Wimax4GInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GInfo$1;->newArray(I)[Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    return-object v0
.end method
