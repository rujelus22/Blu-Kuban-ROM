.class Lr/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:[B


# direct methods
.method constructor <init>(J[B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    iput-wide p1, p0, Lr/B;->a:J

    .line 1246
    if-nez p3, :cond_e

    .line 1247
    invoke-static {}, Lr/w;->i()[B

    move-result-object v0

    iput-object v0, p0, Lr/B;->b:[B

    .line 1251
    :goto_d
    return-void

    .line 1249
    :cond_e
    iput-object p3, p0, Lr/B;->b:[B

    goto :goto_d
.end method


# virtual methods
.method a()J
    .registers 3

    .prologue
    .line 1259
    iget-wide v0, p0, Lr/B;->a:J

    return-wide v0
.end method

.method b()[B
    .registers 2

    .prologue
    .line 1271
    iget-object v0, p0, Lr/B;->b:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1276
    if-ne p0, p1, :cond_5

    .line 1277
    const/4 v0, 0x1

    .line 1290
    :cond_4
    :goto_4
    return v0

    .line 1280
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 1284
    check-cast p1, Lr/B;

    .line 1286
    iget-wide v1, p0, Lr/B;->a:J

    iget-wide v3, p1, Lr/B;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 1290
    iget-object v0, p0, Lr/B;->b:[B

    iget-object v1, p1, Lr/B;->b:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1295
    iget-wide v0, p0, Lr/B;->a:J

    iget-wide v2, p0, Lr/B;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 1296
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lr/B;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1297
    return v0
.end method
