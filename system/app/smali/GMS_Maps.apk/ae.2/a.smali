.class public Lae/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lat/B;

.field private final b:D


# direct methods
.method public constructor <init>(Lat/B;D)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lae/a;->a:Lat/B;

    .line 27
    iput-wide p2, p0, Lae/a;->b:D

    .line 28
    return-void
.end method


# virtual methods
.method public a()Lat/B;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lae/a;->a:Lat/B;

    return-object v0
.end method

.method public b()D
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lae/a;->b:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    instance-of v1, p1, Lae/a;

    if-nez v1, :cond_6

    .line 49
    :cond_5
    :goto_5
    return v0

    .line 48
    :cond_6
    check-cast p1, Lae/a;

    .line 49
    iget-object v1, p0, Lae/a;->a:Lat/B;

    iget-object v2, p1, Lae/a;->a:Lat/B;

    invoke-static {v1, v2}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lae/a;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p1, Lae/a;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lae/a;->a:Lat/B;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lae/a;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/K;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 55
    invoke-static {p0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mapPoint"

    iget-object v2, p0, Lae/a;->a:Lat/B;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "elevation"

    iget-wide v2, p0, Lae/a;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
