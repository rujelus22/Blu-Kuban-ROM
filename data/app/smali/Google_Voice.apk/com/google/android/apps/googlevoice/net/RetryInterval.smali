.class public Lcom/google/android/apps/googlevoice/net/RetryInterval;
.super Ljava/lang/Object;
.source "RetryInterval.java"


# instance fields
.field private length:J

.field private final maxLength:J

.field private final minLength:J

.field private randomizedLength:J

.field private final rng:Ljava/util/Random;


# direct methods
.method public constructor <init>(JJ)V
    .registers 11
    .parameter "min"
    .parameter "max"

    .prologue
    .line 48
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/net/RetryInterval;-><init>(JJLjava/util/Random;)V

    .line 49
    return-void
.end method

.method public constructor <init>(JJLjava/util/Random;)V
    .registers 9
    .parameter "min"
    .parameter "max"
    .parameter "rng"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_22
    cmp-long v0, p3, p1

    if-gez v0, :cond_49

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_49
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-ltz v0, :cond_69

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max too big: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_69
    if-nez p5, :cond_73

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rng == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_73
    iput-object p5, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->rng:Ljava/util/Random;

    .line 75
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->minLength:J

    .line 76
    iput-wide p3, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->maxLength:J

    .line 78
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->minLength:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->setLength(J)V

    .line 79
    return-void
.end method

.method private clipLength(J)J
    .registers 7
    .parameter "theLength"

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->minLength:J

    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->maxLength:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private setLength(J)V
    .registers 8
    .parameter "length"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->clipLength(J)J

    move-result-wide p1

    .line 134
    iput-wide p1, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->length:J

    .line 136
    long-to-int v1, p1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 137
    .local v0, range:I
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->rng:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    const-wide/16 v3, 0x2

    div-long v3, p1, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->randomizedLength:J

    .line 138
    return-void
.end method


# virtual methods
.method public adjustDueToFailure()V
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 100
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->maxLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 101
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->length:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->setLength(J)V

    .line 105
    :goto_16
    return-void

    .line 103
    :cond_17
    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->setLength(J)V

    goto :goto_16
.end method

.method public isCeilingReached()Z
    .registers 5

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->length:J

    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->maxLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public length()J
    .registers 3

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->randomizedLength:J

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/google/android/apps/googlevoice/net/RetryInterval;->minLength:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/googlevoice/net/RetryInterval;->setLength(J)V

    .line 125
    return-void
.end method
