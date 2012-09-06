.class public LOG;
.super Ljava/lang/Object;
.source "SearchTerm.java"


# instance fields
.field private final a:J

.field private final a:Ljava/lang/String;

.field private final a:LnL;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_18

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, LafQ;->a(Z)V

    .line 34
    iput-object p1, p0, LOG;->a:Ljava/lang/String;

    .line 35
    iput-wide p2, p0, LOG;->a:J

    .line 36
    invoke-static {p2, p3, p1}, LnP;->a(JLjava/lang/String;)LnL;

    move-result-object v0

    iput-object v0, p0, LOG;->a:LnL;

    .line 37
    return-void

    .line 33
    :cond_18
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a()LOG;
    .registers 4

    .prologue
    .line 80
    new-instance v0, LOG;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, LOG;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;J)LOG;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, LOG;

    invoke-direct {v0, p0, p1, p2}, LOG;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, LOG;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()LnL;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, LOG;->a:LnL;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    instance-of v1, p1, LOG;

    if-nez v1, :cond_6

    .line 45
    :cond_5
    :goto_5
    return v0

    .line 44
    :cond_6
    check-cast p1, LOG;

    .line 45
    iget-object v1, p0, LOG;->a:Ljava/lang/String;

    iget-object v2, p1, LOG;->a:Ljava/lang/String;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, p0, LOG;->a:J

    iget-wide v3, p1, LOG;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, LOG;->a:Ljava/lang/String;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_5
    iget-wide v1, p0, LOG;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0

    :cond_13
    iget-object v0, p0, LOG;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method
