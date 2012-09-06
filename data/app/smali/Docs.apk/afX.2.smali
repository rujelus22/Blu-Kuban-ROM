.class public final LafX;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private a:J

.field private final a:Lage;

.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-static {}, Lage;->a()Lage;

    move-result-object v0

    invoke-direct {p0, v0}, LafX;-><init>(Lage;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lage;)V
    .registers 3
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lage;

    iput-object v0, p0, LafX;->a:Lage;

    .line 93
    return-void
.end method

.method private a()J
    .registers 5

    .prologue
    .line 145
    iget-boolean v0, p0, LafX;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, LafX;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    iget-wide v2, p0, LafX;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, LafX;->a:J

    add-long/2addr v0, v2

    :goto_10
    return-wide v0

    :cond_11
    iget-wide v0, p0, LafX;->a:J

    goto :goto_10
.end method

.method private static a(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 210
    sget-object v0, LafY;->a:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 220
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 212
    :pswitch_11
    const-string v0, "ns"

    .line 218
    :goto_13
    return-object v0

    .line 214
    :pswitch_14
    const-string v0, "\u03bcs"

    goto :goto_13

    .line 216
    :pswitch_17
    const-string v0, "ms"

    goto :goto_13

    .line 218
    :pswitch_1a
    const-string v0, "s"

    goto :goto_13

    .line 210
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private static a(J)Ljava/util/concurrent/TimeUnit;
    .registers 6
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 197
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 198
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 206
    :goto_10
    return-object v0

    .line 200
    :cond_11
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    .line 201
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_10

    .line 203
    :cond_20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2f

    .line 204
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_10

    .line 206
    :cond_2f
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    goto :goto_10
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)J
    .registers 5
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, LafX;->a()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a()LafX;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-boolean v0, p0, LafX;->a:Z

    if-nez v0, :cond_14

    move v0, v1

    :goto_6
    invoke-static {v0}, LafQ;->b(Z)V

    .line 112
    iput-boolean v1, p0, LafX;->a:Z

    .line 113
    iget-object v0, p0, LafX;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    iput-wide v0, p0, LafX;->b:J

    .line 114
    return-object p0

    .line 111
    :cond_14
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public a(I)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, LafX;->a()J

    move-result-wide v0

    .line 188
    invoke-static {v0, v1}, LafX;->a(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    .line 189
    long-to-double v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v0, v3

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "g %s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v2}, LafX;->a(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()LafX;
    .registers 7

    .prologue
    .line 125
    iget-object v0, p0, LafX;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    .line 126
    iget-boolean v2, p0, LafX;->a:Z

    invoke-static {v2}, LafQ;->b(Z)V

    .line 127
    const/4 v2, 0x0

    iput-boolean v2, p0, LafX;->a:Z

    .line 128
    iget-wide v2, p0, LafX;->a:J

    iget-wide v4, p0, LafX;->b:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, LafX;->a:J

    .line 129
    return-object p0
.end method

.method public c()LafX;
    .registers 3

    .prologue
    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LafX;->a:J

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, LafX;->a:Z

    .line 141
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LafX;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
