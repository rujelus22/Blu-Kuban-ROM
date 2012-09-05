.class public final Lmr;
.super Lmw;
.source "a"


# instance fields
.field protected final c:D


# direct methods
.method public constructor <init>(D)V
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lmw;-><init>()V

    iput-wide p1, p0, Lmr;->c:D

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, Lmr;->c:D

    invoke-static {v0, v1}, Lgv;->a(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lez;Lhs;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 84
    iget-wide v0, p0, Lmr;->c:D

    invoke-virtual {p1, v0, v1}, Lez;->a(D)V

    .line 85
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    if-ne p1, p0, :cond_6

    move v0, v5

    .line 95
    :goto_5
    return v0

    .line 91
    :cond_6
    if-nez p1, :cond_a

    move v0, v4

    goto :goto_5

    .line 92
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v4

    .line 93
    goto :goto_5

    .line 95
    :cond_16
    check-cast p1, Lmr;

    iget-wide v0, p1, Lmr;->c:D

    iget-wide v2, p0, Lmr;->c:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_22

    move v0, v5

    goto :goto_5

    :cond_22
    move v0, v4

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    .line 102
    iget-wide v0, p0, Lmr;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 103
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method
