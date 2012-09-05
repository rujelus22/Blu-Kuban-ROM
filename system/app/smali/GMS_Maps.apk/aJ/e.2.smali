.class LaJ/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaJ/P;

.field private b:I

.field private final c:I

.field private d:LaJ/f;


# direct methods
.method public constructor <init>(LaJ/I;)V
    .registers 6

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v0

    invoke-virtual {p1}, LaJ/I;->g()J

    move-result-wide v1

    invoke-virtual {p1}, LaJ/I;->j()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, LaJ/e;-><init>(LaJ/P;JI)V

    return-void
.end method

.method private constructor <init>(LaJ/P;JI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaJ/e;->a:LaJ/P;

    invoke-virtual {p0, p2, p3}, LaJ/e;->a(J)V

    iput p4, p0, LaJ/e;->c:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;)LaJ/e;
    .registers 7

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    invoke-static {p0}, LaJ/P;->a(Ljava/io/DataInput;)LaJ/P;

    move-result-object v2

    new-instance v3, LaJ/e;

    int-to-long v4, v0

    invoke-direct {v3, v2, v4, v5, v1}, LaJ/e;-><init>(LaJ/P;JI)V

    return-object v3
.end method


# virtual methods
.method public a()LaJ/P;
    .registers 2

    iget-object v0, p0, LaJ/e;->a:LaJ/P;

    return-object v0
.end method

.method public a(J)V
    .registers 7

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/32 v2, 0x424b1f68

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, LaJ/e;->b:I

    return-void
.end method

.method public a(LaJ/f;)V
    .registers 4

    iget-object v0, p0, LaJ/e;->d:LaJ/f;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FlashRecord already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, LaJ/e;->d:LaJ/f;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    iget v0, p0, LaJ/e;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p0, LaJ/e;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v0, p0, LaJ/e;->a:LaJ/P;

    invoke-virtual {v0, p1}, LaJ/P;->a(Ljava/io/DataOutput;)V

    return-void
.end method

.method public b()J
    .registers 5

    iget v0, p0, LaJ/e;->b:I

    int-to-long v0, v0

    const-wide/32 v2, 0x424b1f68

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaJ/e;->c:I

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public d()LaJ/f;
    .registers 2

    iget-object v0, p0, LaJ/e;->d:LaJ/f;

    return-object v0
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
    instance-of v2, p1, LaJ/e;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, LaJ/e;

    iget v2, p0, LaJ/e;->c:I

    iget v3, p1, LaJ/e;->c:I

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    iget-object v2, p0, LaJ/e;->a:LaJ/P;

    if-nez v2, :cond_1f

    iget-object v2, p1, LaJ/e;->a:LaJ/P;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v0, p0, LaJ/e;->a:LaJ/P;

    iget-object v1, p1, LaJ/e;->a:LaJ/P;

    invoke-virtual {v0, v1}, LaJ/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, LaJ/e;->a:LaJ/P;

    if-eqz v0, :cond_10

    iget-object v0, p0, LaJ/e;->a:LaJ/P;

    invoke-virtual {v0}, LaJ/P;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, LaJ/e;->c:I

    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LaJ/e;->a:LaJ/P;

    invoke-virtual {v1}, LaJ/P;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaJ/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
