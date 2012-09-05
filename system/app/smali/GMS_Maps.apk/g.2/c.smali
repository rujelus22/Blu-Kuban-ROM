.class Lg/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lg/d;

.field private b:I

.field private c:F

.field private d:I

.field private e:I

.field private f:Lg/e;


# direct methods
.method constructor <init>(IFII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/d;->b:Lg/d;

    iput-object v0, p0, Lg/c;->a:Lg/d;

    iput p1, p0, Lg/c;->b:I

    iput p2, p0, Lg/c;->c:F

    iput p3, p0, Lg/c;->d:I

    iput p4, p0, Lg/c;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/c;->f:Lg/e;

    return-void
.end method

.method constructor <init>(Lg/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/d;->a:Lg/d;

    iput-object v0, p0, Lg/c;->a:Lg/d;

    iput-object p1, p0, Lg/c;->f:Lg/e;

    return-void
.end method

.method static a(Ljava/io/DataInputStream;)Lg/c;
    .registers 6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {}, Lg/d;->values()[Lg/d;

    move-result-object v1

    aget-object v0, v1, v0

    sget-object v1, Lg/d;->a:Lg/d;

    if-ne v0, v1, :cond_18

    invoke-static {p0}, Lg/e;->a(Ljava/io/DataInputStream;)Lg/e;

    move-result-object v1

    new-instance v0, Lg/c;

    invoke-direct {v0, v1}, Lg/c;-><init>(Lg/e;)V

    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    new-instance v0, Lg/c;

    invoke-direct {v0, v1, v2, v3, v4}, Lg/c;-><init>(IFII)V

    goto :goto_17
.end method

.method static synthetic a(Lg/c;)Lg/d;
    .registers 2

    iget-object v0, p0, Lg/c;->a:Lg/d;

    return-object v0
.end method

.method static synthetic b(Lg/c;)Lg/e;
    .registers 2

    iget-object v0, p0, Lg/c;->f:Lg/e;

    return-object v0
.end method

.method static synthetic c(Lg/c;)I
    .registers 2

    iget v0, p0, Lg/c;->b:I

    return v0
.end method

.method static synthetic d(Lg/c;)F
    .registers 2

    iget v0, p0, Lg/c;->c:F

    return v0
.end method

.method static synthetic e(Lg/c;)I
    .registers 2

    iget v0, p0, Lg/c;->d:I

    return v0
.end method

.method static synthetic f(Lg/c;)I
    .registers 2

    iget v0, p0, Lg/c;->e:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lg/c;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lg/c;

    iget-object v2, p0, Lg/c;->a:Lg/d;

    iget-object v3, p1, Lg/c;->a:Lg/d;

    if-ne v2, v3, :cond_35

    iget v2, p0, Lg/c;->b:I

    iget v3, p1, Lg/c;->b:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Lg/c;->c:F

    iget v3, p1, Lg/c;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    iget v2, p0, Lg/c;->d:I

    iget v3, p1, Lg/c;->d:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Lg/c;->e:I

    iget v3, p1, Lg/c;->e:I

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Lg/c;->f:Lg/e;

    if-nez v2, :cond_37

    iget-object v2, p1, Lg/c;->f:Lg/e;

    if-eqz v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lg/c;->f:Lg/e;

    iget-object v3, p1, Lg/c;->f:Lg/e;

    invoke-virtual {v2, v3}, Lg/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lg/c;->a:Lg/d;

    invoke-virtual {v0}, Lg/d;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/c;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/c;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/c;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/c;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lg/c;->f:Lg/e;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    :goto_27
    add-int/2addr v0, v1

    return v0

    :cond_29
    iget-object v0, p0, Lg/c;->f:Lg/e;

    invoke-virtual {v0}, Lg/e;->hashCode()I

    move-result v0

    goto :goto_27
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lg/c;->a:Lg/d;

    sget-object v1, Lg/d;->a:Lg/d;

    if-ne v0, v1, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leaf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg/c;->f:Lg/e;

    invoke-virtual {v1}, Lg/e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    const-string v0, "[%d] <= %f (%d) : (%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lg/c;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lg/c;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lg/c;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lg/c;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method
