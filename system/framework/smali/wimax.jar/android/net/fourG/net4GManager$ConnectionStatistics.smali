.class public abstract Landroid/net/fourG/net4GManager$ConnectionStatistics;
.super Ljava/lang/Object;
.source "net4GManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/net4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConnectionStatistics"
.end annotation


# instance fields
.field public m_lTotalRxBytes:J

.field public m_lTotalRxPackets:J

.field public m_lTotalTxBytes:J

.field public m_lTotalTxPackets:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 662
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDownlinkModulation()I
.end method

.method public getTotalRxBytes()J
    .registers 3

    .prologue
    .line 669
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxBytes:J

    return-wide v0
.end method

.method public getTotalRxPackets()J
    .registers 3

    .prologue
    .line 673
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxPackets:J

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .registers 3

    .prologue
    .line 677
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxBytes:J

    return-wide v0
.end method

.method public getTotalTxPackets()J
    .registers 3

    .prologue
    .line 681
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxPackets:J

    return-wide v0
.end method

.method public abstract getUplinkModulation()I
.end method

.method refresh()V
    .registers 1

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/net/fourG/net4GManager$ConnectionStatistics;->getTotalRxBytes()J

    .line 696
    invoke-virtual {p0}, Landroid/net/fourG/net4GManager$ConnectionStatistics;->getTotalRxPackets()J

    .line 697
    invoke-virtual {p0}, Landroid/net/fourG/net4GManager$ConnectionStatistics;->getTotalTxBytes()J

    .line 698
    invoke-virtual {p0}, Landroid/net/fourG/net4GManager$ConnectionStatistics;->getTotalTxPackets()J

    .line 699
    return-void
.end method
