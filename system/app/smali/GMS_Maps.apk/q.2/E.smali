.class public Lq/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq/f;

.field private static final b:[Lq/a;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:[Lq/f;

.field private final f:Ln/U;

.field private final g:I

.field private h:[Lq/a;

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 20
    new-instance v0, Lq/f;

    const-string v1, "Unknown Road"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lq/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lq/e;->a:Lq/f;

    .line 24
    new-array v0, v3, [Lq/a;

    sput-object v0, Lq/e;->b:[Lq/a;

    return-void
.end method

.method public constructor <init>(J[Lq/f;Ln/U;IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    array-length v0, p3

    if-nez v0, :cond_e

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segments must have at least one name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_e
    iput p5, p0, Lq/e;->c:I

    .line 152
    iput-wide p1, p0, Lq/e;->d:J

    .line 153
    iput-object p3, p0, Lq/e;->e:[Lq/f;

    .line 154
    iput-object p4, p0, Lq/e;->f:Ln/U;

    .line 155
    iput p6, p0, Lq/e;->g:I

    .line 156
    sget-object v0, Lq/e;->b:[Lq/a;

    iput-object v0, p0, Lq/e;->h:[Lq/a;

    .line 157
    iput p7, p0, Lq/e;->i:I

    .line 158
    iput p8, p0, Lq/e;->j:I

    .line 159
    return-void
.end method

.method public static a(Ln/am;I)J
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Ln/am;->c()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ln/am;->d()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a(I)Lq/a;
    .registers 3
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lq/e;->h:[Lq/a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(ILn/Q;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 229
    iget v0, p0, Lq/e;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    iget-object v0, p0, Lq/e;->f:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 231
    :cond_f
    iget-object v0, p0, Lq/e;->f:Ln/U;

    invoke-virtual {v0, p1, p2}, Ln/U;->a(ILn/Q;)V

    .line 232
    return-void
.end method

.method public a(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lq/e;->f:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lq/e;->a(ILn/Q;)V

    .line 242
    return-void
.end method

.method public varargs a([Lq/a;)V
    .registers 3
    .parameter

    .prologue
    .line 198
    array-length v0, p1

    if-nez v0, :cond_8

    .line 199
    sget-object v0, Lq/e;->b:[Lq/a;

    iput-object v0, p0, Lq/e;->h:[Lq/a;

    .line 203
    :goto_7
    return-void

    .line 201
    :cond_8
    iput-object p1, p0, Lq/e;->h:[Lq/a;

    goto :goto_7
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lq/e;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method a(Lq/e;)Z
    .registers 4
    .parameter

    .prologue
    .line 270
    iget v0, p0, Lq/e;->c:I

    and-int/lit8 v0, v0, 0x4

    iget v1, p1, Lq/e;->c:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lq/e;->f:Ln/U;

    iget-object v1, p1, Lq/e;->f:Ln/U;

    invoke-virtual {v0, v1}, Ln/U;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public b(I)Ln/Q;
    .registers 3
    .parameter

    .prologue
    .line 222
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    .line 223
    invoke-virtual {p0, p1, v0}, Lq/e;->a(ILn/Q;)V

    .line 224
    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lq/e;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(I)Lq/f;
    .registers 3
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lq/e;->e:[Lq/f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lq/e;->c:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()I
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lq/e;->h:[Lq/a;

    array-length v0, v0

    return v0
.end method

.method public e()Ln/Q;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lq/e;->f:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lq/e;->b(I)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 308
    instance-of v1, p1, Lq/e;

    if-nez v1, :cond_6

    .line 311
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-wide v1, p0, Lq/e;->d:J

    check-cast p1, Lq/e;

    iget-wide v3, p1, Lq/e;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public f()I
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lq/e;->f:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    return v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lq/e;->i:I

    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Lq/e;->j:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const-wide/16 v5, 0xff

    .line 301
    iget-wide v0, p0, Lq/e;->d:J

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lq/e;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lq/e;->d:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    const-string v1, "[name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lq/e;->e:[Lq/f;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, " unroutable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lq/e;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, " leaves-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lq/e;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, " enters-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lq/e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, " num-points: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lq/e;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, " first-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lq/e;->b(I)Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, " last-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lq/e;->e()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, " num-arcs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lq/e;->h:[Lq/a;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
