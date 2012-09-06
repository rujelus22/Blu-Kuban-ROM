.class public final Lcom/google/common/base/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/an;

.field private b:Z

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Lcom/google/common/base/an;->b()Lcom/google/common/base/an;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/aj;-><init>(Lcom/google/common/base/an;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/an;)V
    .registers 3
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/an;

    iput-object v0, p0, Lcom/google/common/base/aj;->a:Lcom/google/common/base/an;

    .line 93
    return-void
.end method

.method private c()J
    .registers 5

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/common/base/aj;->b:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/base/aj;->a:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/base/aj;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/base/aj;->c:J

    add-long/2addr v0, v2

    :goto_10
    return-wide v0

    :cond_11
    iget-wide v0, p0, Lcom/google/common/base/aj;->c:J

    goto :goto_10
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/common/base/aj;->c()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lcom/google/common/base/aj;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-boolean v0, p0, Lcom/google/common/base/aj;->b:Z

    if-nez v0, :cond_14

    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 112
    iput-boolean v1, p0, Lcom/google/common/base/aj;->b:Z

    .line 113
    iget-object v0, p0, Lcom/google/common/base/aj;->a:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/base/aj;->d:J

    .line 114
    return-object p0

    .line 111
    :cond_14
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final b()Lcom/google/common/base/aj;
    .registers 7

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/common/base/aj;->a:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    .line 126
    iget-boolean v2, p0, Lcom/google/common/base/aj;->b:Z

    invoke-static {v2}, Lcom/google/common/base/ag;->b(Z)V

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/common/base/aj;->b:Z

    .line 128
    iget-wide v2, p0, Lcom/google/common/base/aj;->c:J

    iget-wide v4, p0, Lcom/google/common/base/aj;->d:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/base/aj;->c:J

    .line 129
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 175
    invoke-direct {p0}, Lcom/google/common/base/aj;->c()J

    move-result-wide v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_51

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_14
    long-to-double v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "g %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    sget-object v2, Lcom/google/common/base/ak;->a:[I

    invoke-virtual {v0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_84

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_60

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_14

    :cond_60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_6f

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_14

    :cond_6f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_14

    :pswitch_72
    const-string v0, "ns"

    :goto_74
    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7b
    const-string v0, "\u03bcs"

    goto :goto_74

    :pswitch_7e
    const-string v0, "ms"

    goto :goto_74

    :pswitch_81
    const-string v0, "s"

    goto :goto_74

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_72
        :pswitch_7b
        :pswitch_7e
        :pswitch_81
    .end packed-switch
.end method
