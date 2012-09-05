.class public Lorg/columba/ristretto/imap/QuotaInfo;
.super Ljava/lang/Object;
.source "QuotaInfo.java"


# instance fields
.field private current:J

.field private max:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide v0, p0, Lorg/columba/ristretto/imap/QuotaInfo;->current:J

    .line 55
    iput-wide v0, p0, Lorg/columba/ristretto/imap/QuotaInfo;->max:J

    .line 56
    return-void
.end method


# virtual methods
.method public getMaxSize()J
    .registers 3

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/columba/ristretto/imap/QuotaInfo;->max:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/columba/ristretto/imap/QuotaInfo;->current:J

    return-wide v0
.end method

.method public final hasQuota()Z
    .registers 5

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/columba/ristretto/imap/QuotaInfo;->max:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setMaxSize(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 100
    iput-wide p1, p0, Lorg/columba/ristretto/imap/QuotaInfo;->max:J

    .line 101
    return-void
.end method

.method public setSize(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 91
    iput-wide p1, p0, Lorg/columba/ristretto/imap/QuotaInfo;->current:J

    .line 92
    return-void
.end method
