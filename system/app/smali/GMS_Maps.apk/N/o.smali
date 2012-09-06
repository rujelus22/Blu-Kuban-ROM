.class public Ln/o;
.super Ln/m;
.source "SourceFile"


# instance fields
.field protected final b:J


# direct methods
.method constructor <init>(J)V
    .registers 3
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Ln/m;-><init>()V

    .line 155
    iput-wide p1, p0, Ln/o;->b:J

    .line 156
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 215
    instance-of v1, p1, Ln/o;

    if-eqz v1, :cond_10

    .line 216
    check-cast p1, Ln/o;

    .line 217
    iget-wide v1, p1, Ln/o;->b:J

    iget-wide v3, p0, Ln/o;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_10

    const/4 v0, 0x1

    .line 219
    :cond_10
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    const-string v0, ""

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 206
    instance-of v0, p1, Ln/n;

    if-eqz v0, :cond_12

    .line 207
    check-cast p1, Ln/n;

    .line 208
    iget-wide v0, p1, Ln/n;->b:J

    iget-wide v2, p0, Ln/o;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 210
    :goto_f
    return v0

    .line 208
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 210
    :cond_12
    invoke-virtual {p0, p1}, Ln/o;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 197
    iget-wide v0, p0, Ln/o;->b:J

    iget-wide v2, p0, Ln/o;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ln/o;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
