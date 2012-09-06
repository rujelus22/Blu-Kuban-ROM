.class public Lcom/google/googlenav/friend/history/o;
.super Lcom/google/googlenav/friend/history/K;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method constructor <init>(JJ)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/googlenav/friend/history/K;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/google/googlenav/friend/history/o;->a:J

    .line 53
    iput-wide p3, p0, Lcom/google/googlenav/friend/history/o;->b:J

    .line 56
    iget-wide v0, p0, Lcom/google/googlenav/friend/history/o;->a:J

    iget-wide v2, p0, Lcom/google/googlenav/friend/history/o;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lastVisitedMillis (%d) cannot be greater than segmentMillis (%d)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2c
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v1, 0x1e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/o;->b()I

    move-result v0

    .line 71
    if-lt v0, v6, :cond_1f

    if-gt v0, v1, :cond_1f

    .line 73
    const/16 v1, 0x286

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_1e
    return-object v0

    .line 77
    :cond_1f
    if-le v0, v1, :cond_49

    .line 79
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 80
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/google/googlenav/friend/history/o;->a:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 82
    const/16 v0, 0x285

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v6}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 88
    :cond_49
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method protected b()I
    .registers 5

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/googlenav/friend/history/o;->b:J

    iget-wide v2, p0, Lcom/google/googlenav/friend/history/o;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
