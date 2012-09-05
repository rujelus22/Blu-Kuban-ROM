.class public Lw/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lw/f;

.field private static final b:[Lw/a;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:[Lw/f;

.field private final f:Lt/P;

.field private final g:I

.field private h:[Lw/a;

.field private final i:I

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Lw/f;

    const-string v1, "Unknown Road"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lw/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lw/e;->a:Lw/f;

    new-array v0, v3, [Lw/a;

    sput-object v0, Lw/e;->b:[Lw/a;

    return-void
.end method

.method public constructor <init>(J[Lw/f;Lt/P;IIII)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Segments must have at least one name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput p5, p0, Lw/e;->c:I

    iput-wide p1, p0, Lw/e;->d:J

    iput-object p3, p0, Lw/e;->e:[Lw/f;

    iput-object p4, p0, Lw/e;->f:Lt/P;

    iput p6, p0, Lw/e;->g:I

    sget-object v0, Lw/e;->b:[Lw/a;

    iput-object v0, p0, Lw/e;->h:[Lw/a;

    iput p7, p0, Lw/e;->i:I

    iput p8, p0, Lw/e;->j:I

    return-void
.end method

.method public static a(Lt/af;I)J
    .registers 7

    invoke-virtual {p0}, Lt/af;->c()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lt/af;->d()I

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
.method public a(I)Lw/a;
    .registers 3

    iget-object v0, p0, Lw/e;->h:[Lw/a;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(ILt/L;)V
    .registers 4

    iget v0, p0, Lw/e;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    iget-object v0, p0, Lw/e;->f:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_f
    iget-object v0, p0, Lw/e;->f:Lt/P;

    invoke-virtual {v0, p1, p2}, Lt/P;->a(ILt/L;)V

    return-void
.end method

.method public a(Lt/L;)V
    .registers 3

    iget-object v0, p0, Lw/e;->f:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lw/e;->a(ILt/L;)V

    return-void
.end method

.method public varargs a([Lw/a;)V
    .registers 3

    array-length v0, p1

    if-nez v0, :cond_8

    sget-object v0, Lw/e;->b:[Lw/a;

    iput-object v0, p0, Lw/e;->h:[Lw/a;

    :goto_7
    return-void

    :cond_8
    iput-object p1, p0, Lw/e;->h:[Lw/a;

    goto :goto_7
.end method

.method public a()Z
    .registers 2

    iget v0, p0, Lw/e;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method a(Lw/e;)Z
    .registers 4

    iget v0, p0, Lw/e;->c:I

    and-int/lit8 v0, v0, 0x4

    iget v1, p1, Lw/e;->c:I

    and-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lw/e;->f:Lt/P;

    iget-object v1, p1, Lw/e;->f:Lt/P;

    invoke-virtual {v0, v1}, Lt/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public b(I)Lt/L;
    .registers 3

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    invoke-virtual {p0, p1, v0}, Lw/e;->a(ILt/L;)V

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget v0, p0, Lw/e;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(I)Lw/f;
    .registers 3

    iget-object v0, p0, Lw/e;->e:[Lw/f;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget v0, p0, Lw/e;->c:I

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

    iget-object v0, p0, Lw/e;->h:[Lw/a;

    array-length v0, v0

    return v0
.end method

.method public e()Lt/L;
    .registers 2

    iget-object v0, p0, Lw/e;->f:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lw/e;->b(I)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Lw/e;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-wide v1, p0, Lw/e;->d:J

    check-cast p1, Lw/e;

    iget-wide v3, p1, Lw/e;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lw/e;->f:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lw/e;->i:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lw/e;->j:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    const-wide/16 v5, 0xff

    iget-wide v0, p0, Lw/e;->d:J

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    and-long/2addr v0, v5

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-wide v2, p0, Lw/e;->d:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-wide v2, p0, Lw/e;->d:J

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lw/e;->e:[Lw/f;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " unroutable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw/e;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " leaves-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw/e;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enters-region: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw/e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " num-points: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw/e;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " first-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lw/e;->b(I)Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " last-point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lw/e;->e()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " num-arcs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lw/e;->h:[Lw/a;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
