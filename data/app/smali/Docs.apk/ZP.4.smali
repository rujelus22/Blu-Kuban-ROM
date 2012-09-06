.class public LZP;
.super Ljava/lang/Object;
.source "RateLimitedExecutor.java"


# instance fields
.field private final a:I

.field private a:J

.field private final a:Landroid/os/Handler;

.field private final a:Ljava/lang/Runnable;

.field private final a:Ljava/lang/String;

.field private volatile a:Z

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;ILandroid/os/Handler;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, LZQ;

    invoke-direct {v0, p0}, LZQ;-><init>(LZP;)V

    iput-object v0, p0, LZP;->a:Ljava/lang/Runnable;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LZP;->a:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, LZP;->a:Z

    .line 45
    iput-object p1, p0, LZP;->b:Ljava/lang/Runnable;

    .line 46
    iput p2, p0, LZP;->a:I

    .line 47
    iput-object p3, p0, LZP;->a:Landroid/os/Handler;

    .line 48
    iput-object p4, p0, LZP;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic a(LZP;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 12
    iput-wide p1, p0, LZP;->a:J

    return-wide p1
.end method

.method static synthetic a(LZP;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, LZP;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(LZP;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 12
    iput-boolean p1, p0, LZP;->a:Z

    return p1
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    const-string v2, "RateLimitedExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fire called for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, LZP;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-wide v2, p0, LZP;->a:J

    sub-long v2, v0, v2

    iget v4, p0, LZP;->a:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4c

    .line 61
    iget-boolean v0, p0, LZP;->a:Z

    if-nez v0, :cond_44

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, LZP;->a:Z

    .line 63
    const-string v0, "RateLimitedExecutor"

    const-string v1, "Scheduling an updater"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, LZP;->a:Landroid/os/Handler;

    iget-object v1, p0, LZP;->a:Ljava/lang/Runnable;

    iget v2, p0, LZP;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    :goto_43
    return-void

    .line 66
    :cond_44
    const-string v0, "RateLimitedExecutor"

    const-string v1, "Dropping request, as an updater is already scheduled."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 69
    :cond_4c
    const-string v2, "RateLimitedExecutor"

    const-string v3, "Running updater"

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, p0, LZP;->a:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 71
    iput-wide v0, p0, LZP;->a:J

    goto :goto_43
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 77
    const-string v0, "RateLimitedExecutor[owner=%s, scheduled=%s, lastUpdated=%s, lapseSinceLastUpdate=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LZP;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, LZP;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, LZP;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, LZP;->a:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
