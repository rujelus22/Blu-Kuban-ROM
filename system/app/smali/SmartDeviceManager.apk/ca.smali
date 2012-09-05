.class public final Lca;
.super Lbu;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cid:Ljava/lang/Integer;

.field private lac:Ljava/lang/Integer;

.field private mcc:Ljava/lang/Integer;

.field private mnc:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lbu;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/telephony/NeighboringCellInfo;Led;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lbu;-><init>()V

    .line 38
    invoke-virtual {p2}, Led;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lca;->mcc:Ljava/lang/Integer;

    .line 39
    invoke-virtual {p2}, Led;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lca;->mnc:Ljava/lang/Integer;

    .line 40
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lca;->lac:Ljava/lang/Integer;

    .line 41
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lca;->cid:Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    const/16 v1, 0x63

    if-eq v0, v1, :cond_3d

    .line 43
    invoke-virtual {p1}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lca;->rssi:Ljava/lang/Integer;

    .line 45
    :cond_3d
    iget-wide v0, p2, Led;->b:J

    iput-wide v0, p0, Lca;->time:J

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/telephony/gsm/GsmCellLocation;Led;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lbu;-><init>()V

    .line 25
    iget-object v0, p2, Led;->d:Ljava/lang/Integer;

    .line 26
    iget-wide v1, p2, Led;->b:J

    .line 27
    invoke-virtual {p2}, Led;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lca;->mcc:Ljava/lang/Integer;

    .line 28
    invoke-virtual {p2}, Led;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lca;->mnc:Ljava/lang/Integer;

    .line 29
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lca;->lac:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lca;->cid:Ljava/lang/Integer;

    .line 32
    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lca;->time:J

    .line 33
    if-eqz v0, :cond_38

    .line 34
    iput-object v0, p0, Lca;->rssi:Ljava/lang/Integer;

    .line 35
    :cond_38
    return-void
.end method


# virtual methods
.method public final getCid()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lca;->cid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLac()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lca;->lac:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMcc()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lca;->mcc:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMnc()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lca;->mnc:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setCid(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lca;->cid:Ljava/lang/Integer;

    .line 78
    return-void
.end method

.method public final setLac(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lca;->lac:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method public final setMcc(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lca;->mcc:Ljava/lang/Integer;

    .line 54
    return-void
.end method

.method public final setMnc(Ljava/lang/Integer;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lca;->mnc:Ljava/lang/Integer;

    .line 62
    return-void
.end method
