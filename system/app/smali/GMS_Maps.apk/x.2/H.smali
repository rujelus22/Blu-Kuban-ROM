.class Lx/H;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:I

.field final g:I

.field final h:I


# direct methods
.method constructor <init>(JIIIIIII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lx/H;->a:J

    iput p3, p0, Lx/H;->b:I

    iput p6, p0, Lx/H;->c:I

    iput p4, p0, Lx/H;->d:I

    iput p5, p0, Lx/H;->e:I

    iput p7, p0, Lx/H;->f:I

    iput p8, p0, Lx/H;->g:I

    iput p9, p0, Lx/H;->h:I

    return-void
.end method

.method private static a(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x5

    return v0
.end method

.method static a([BIII)Lx/H;
    .registers 14

    invoke-static {p0, p1}, Lx/A;->c([BI)J

    move-result-wide v1

    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lx/A;->a([BI)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lx/A;->a([BI)I

    move-result v5

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lx/A;->a([BI)I

    move-result v7

    invoke-static {v4}, Lx/H;->a(I)I

    move-result v3

    invoke-static {v4}, Lx/H;->b(I)I

    move-result v6

    invoke-static {v5}, Lx/H;->c(I)I

    move-result v4

    const v0, 0xffffff

    and-int/2addr v5, v0

    new-instance v0, Lx/H;

    move v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lx/H;-><init>(JIIIIIII)V

    return-object v0
.end method

.method private static b(I)I
    .registers 2

    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static b([BI)J
    .registers 4

    invoke-static {p0, p1}, Lx/A;->c([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method static c([BI)I
    .registers 3

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lx/A;->a([BI)I

    move-result v0

    invoke-static {v0}, Lx/H;->c(I)I

    move-result v0

    return v0
.end method

.method static d([BI)I
    .registers 3

    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lx/A;->a([BI)I

    move-result v0

    invoke-static {v0}, Lx/H;->b(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method a([BI)V
    .registers 7

    iget-wide v0, p0, Lx/H;->a:J

    invoke-static {p1, p2, v0, v1}, Lx/A;->a([BIJ)V

    add-int/lit8 v0, p2, 0x8

    iget v1, p0, Lx/H;->b:I

    shl-int/lit8 v1, v1, 0x5

    iget v2, p0, Lx/H;->c:I

    or-int/2addr v1, v2

    invoke-static {v1}, Lx/H;->a(I)I

    move-result v2

    iget v3, p0, Lx/H;->b:I

    if-eq v2, v3, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not pack data offset of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lx/H;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-static {v1}, Lx/H;->b(I)I

    move-result v2

    iget v3, p0, Lx/H;->c:I

    if-eq v2, v3, :cond_54

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not pack refcount of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lx/H;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-static {p1, v0, v1}, Lx/A;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lx/H;->d:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lx/H;->e:I

    or-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lx/A;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lx/H;->f:I

    invoke-static {p1, v0, v1}, Lx/A;->a([BII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lx/H;

    iget v2, p0, Lx/H;->g:I

    iget v3, p1, Lx/H;->g:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lx/H;->h:I

    iget v3, p1, Lx/H;->h:I

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lx/H;->g:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lx/H;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lx/H;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Off:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx/H;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KeyLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx/H;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx/H;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx/H;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Shard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx/H;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ShardIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx/H;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
