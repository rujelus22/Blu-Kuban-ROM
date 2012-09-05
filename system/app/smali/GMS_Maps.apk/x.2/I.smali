.class Lx/I;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-direct {p0, p1, v0}, Lx/I;-><init>(I[B)V

    return-void
.end method

.method constructor <init>(I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lx/I;->d:I

    iput-object p2, p0, Lx/I;->a:[B

    iput p1, p0, Lx/I;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lx/I;->c:I

    return-void
.end method

.method constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lx/I;->d:I

    iput-object p1, p0, Lx/I;->a:[B

    iget-object v0, p0, Lx/I;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx/A;->a([BI)I

    move-result v0

    iput v0, p0, Lx/I;->b:I

    iget-object v0, p0, Lx/I;->a:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lx/A;->a([BI)I

    move-result v0

    iput v0, p0, Lx/I;->c:I

    return-void
.end method

.method static synthetic a(Lx/I;)I
    .registers 2

    iget v0, p0, Lx/I;->b:I

    return v0
.end method

.method static a(Lx/aa;)Lx/I;
    .registers 6

    const/16 v2, 0x1ffc

    const/16 v0, 0x2000

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Lx/aa;->a([B)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lx/A;->c([BII)I

    move-result v1

    invoke-static {v0, v2}, Lx/A;->a([BI)I

    move-result v2

    if-eq v1, v2, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected checksum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v1, Lx/I;

    invoke-direct {v1, v0}, Lx/I;-><init>([B)V

    return-object v1
.end method

.method static synthetic b(Lx/I;)I
    .registers 2

    iget v0, p0, Lx/I;->c:I

    return v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lx/I;->b:I

    return v0
.end method

.method a(I)V
    .registers 6

    iget-object v0, p0, Lx/I;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lx/A;->a([BIJ)V

    return-void
.end method

.method a(Lx/H;)V
    .registers 4

    iget v0, p0, Lx/I;->c:I

    invoke-virtual {p0, p1, v0}, Lx/I;->a(Lx/H;I)V

    iget v0, p0, Lx/I;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/I;->c:I

    iget v0, p1, Lx/H;->b:I

    iget v1, p1, Lx/H;->d:I

    add-int/2addr v0, v1

    iget v1, p1, Lx/H;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lx/I;->d:I

    return-void
.end method

.method a(Lx/H;I)V
    .registers 5

    iget-object v0, p0, Lx/I;->a:[B

    mul-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v0, v1}, Lx/H;->a([BI)V

    return-void
.end method

.method b()I
    .registers 2

    iget v0, p0, Lx/I;->c:I

    return v0
.end method

.method b(I)J
    .registers 4

    iget-object v0, p0, Lx/I;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lx/H;->b([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method b(Lx/aa;)V
    .registers 7

    const/16 v4, 0x1ffc

    const/4 v3, 0x0

    iget-object v0, p0, Lx/I;->a:[B

    iget v1, p0, Lx/I;->b:I

    invoke-static {v0, v3, v1}, Lx/A;->a([BII)V

    iget-object v0, p0, Lx/I;->a:[B

    const/4 v1, 0x4

    iget v2, p0, Lx/I;->c:I

    invoke-static {v0, v1, v2}, Lx/A;->a([BII)V

    iget-object v0, p0, Lx/I;->a:[B

    invoke-static {v0, v3, v4}, Lx/A;->c([BII)I

    move-result v0

    iget-object v1, p0, Lx/I;->a:[B

    invoke-static {v1, v4, v0}, Lx/A;->a([BII)V

    iget-object v0, p0, Lx/I;->a:[B

    invoke-interface {p1, v0}, Lx/aa;->b([B)V

    return-void
.end method

.method c()I
    .registers 4

    iget v0, p0, Lx/I;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lx/I;->d:I

    if-gez v0, :cond_1c

    iget v0, p0, Lx/I;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lx/I;->e(I)Lx/H;

    move-result-object v0

    iget v1, v0, Lx/H;->b:I

    iget v2, v0, Lx/H;->d:I

    add-int/2addr v1, v2

    iget v0, v0, Lx/H;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lx/I;->d:I

    :cond_1c
    iget v0, p0, Lx/I;->d:I

    goto :goto_5
.end method

.method c(I)I
    .registers 4

    iget-object v0, p0, Lx/I;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lx/H;->c([BI)I

    move-result v0

    return v0
.end method

.method d(I)I
    .registers 4

    iget-object v0, p0, Lx/I;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lx/H;->d([BI)I

    move-result v0

    return v0
.end method

.method e(I)Lx/H;
    .registers 5

    iget-object v0, p0, Lx/I;->a:[B

    mul-int/lit8 v1, p1, 0x14

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lx/I;->b:I

    invoke-static {v0, v1, v2, p1}, Lx/H;->a([BIII)Lx/H;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx/I;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lx/I;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
