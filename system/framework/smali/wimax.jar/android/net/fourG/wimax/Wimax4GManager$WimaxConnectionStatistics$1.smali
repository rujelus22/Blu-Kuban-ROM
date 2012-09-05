.class final Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics$1;
.super Ljava/lang/Object;
.source "Wimax4GManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
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
        "Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1053
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    .registers 5
    .parameter "in"

    .prologue
    .line 1055
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;-><init>()V

    .line 1056
    .local v0, info:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxBytes:J

    .line 1057
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxPackets:J

    .line 1058
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxBytes:J

    .line 1059
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxPackets:J

    .line 1060
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1053
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    .registers 3
    .parameter "size"

    .prologue
    .line 1064
    new-array v0, p1, [Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1053
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics$1;->newArray(I)[Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    move-result-object v0

    return-object v0
.end method
