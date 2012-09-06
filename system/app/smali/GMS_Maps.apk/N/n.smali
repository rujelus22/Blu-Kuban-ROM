.class public Ln/n;
.super Ln/m;
.source "SourceFile"


# instance fields
.field protected final b:J

.field protected final c:J

.field protected final d:J


# direct methods
.method constructor <init>(J)V
    .registers 5
    .parameter

    .prologue
    .line 238
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Ln/n;-><init>(JJ)V

    .line 239
    return-void
.end method

.method constructor <init>(JJ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0}, Ln/m;-><init>()V

    .line 243
    invoke-static {p1, p2, p3, p4}, Ln/m;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Ln/n;->b:J

    .line 244
    iput-wide p1, p0, Ln/n;->c:J

    .line 245
    iput-wide p3, p0, Ln/n;->d:J

    .line 246
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 276
    iget-wide v0, p0, Ln/n;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 277
    iget-wide v0, p0, Ln/n;->d:J

    invoke-static {v0, v1}, Lt/v;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Ln/n;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 323
    instance-of v1, p1, Ln/n;

    if-eqz v1, :cond_20

    .line 324
    check-cast p1, Ln/n;

    .line 325
    iget-wide v1, p1, Ln/n;->c:J

    iget-wide v3, p0, Ln/n;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    iget-wide v1, p1, Ln/n;->d:J

    iget-wide v3, p0, Ln/n;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    iget-wide v1, p1, Ln/n;->b:J

    iget-wide v3, p0, Ln/n;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_20

    const/4 v0, 0x1

    .line 327
    :cond_20
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ln/n;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ln/n;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 312
    instance-of v0, p1, Ln/o;

    if-eqz v0, :cond_12

    .line 313
    check-cast p1, Ln/o;

    iget-wide v0, p1, Ln/o;->b:J

    iget-wide v2, p0, Ln/n;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 315
    :goto_f
    return v0

    .line 313
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    .line 315
    :cond_12
    invoke-virtual {p0, p1}, Ln/n;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 302
    iget-wide v0, p0, Ln/n;->b:J

    iget-wide v2, p0, Ln/n;->b:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    invoke-virtual {p0}, Ln/n;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
