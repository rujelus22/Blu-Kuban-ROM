.class public final Lmu;
.super Lmw;
.source "a"


# instance fields
.field final c:J


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lmw;-><init>()V

    iput-wide p1, p0, Lmu;->c:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, Lmu;->c:J

    invoke-static {v0, v1}, Lgv;->a(J)Ljava/lang/String;

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
    .line 76
    iget-wide v0, p0, Lmu;->c:J

    invoke-virtual {p1, v0, v1}, Lez;->a(J)V

    .line 77
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    if-ne p1, p0, :cond_6

    move v0, v5

    .line 87
    :goto_5
    return v0

    .line 83
    :cond_6
    if-nez p1, :cond_a

    move v0, v4

    goto :goto_5

    .line 84
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v4

    .line 85
    goto :goto_5

    .line 87
    :cond_16
    check-cast p1, Lmu;

    iget-wide v0, p1, Lmu;->c:J

    iget-wide v2, p0, Lmu;->c:J

    cmp-long v0, v0, v2

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
    .line 92
    iget-wide v0, p0, Lmu;->c:J

    long-to-int v0, v0

    iget-wide v1, p0, Lmu;->c:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
