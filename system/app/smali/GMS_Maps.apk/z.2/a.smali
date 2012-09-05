.class public Lz/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lz/a;

.field public static final b:Lz/a;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lz/a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    sput-object v0, Lz/a;->a:Lz/a;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-static {v0}, Lz/a;->a([I)Lz/a;

    move-result-object v0

    sput-object v0, Lz/a;->b:Lz/a;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz/a;->c:I

    return-void
.end method

.method public static a(Lz/a;Lz/a;)Lz/a;
    .registers 5

    new-instance v0, Lz/a;

    iget v1, p0, Lz/a;->c:I

    iget v2, p1, Lz/a;->c:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    return-object v0
.end method

.method public static varargs a([I)Lz/a;
    .registers 3

    new-instance v0, Lz/a;

    invoke-static {p0}, Lz/a;->b([I)I

    move-result v1

    invoke-direct {v0, v1}, Lz/a;-><init>(I)V

    return-object v0
.end method

.method static varargs b([I)I
    .registers 6

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v0, v2, :cond_39

    aget v3, p0, v0

    invoke-static {}, Ln/a;->b()Z

    move-result v4

    if-nez v4, :cond_32

    if-ltz v3, :cond_13

    const/16 v4, 0x1f

    if-le v3, v4, :cond_32

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_39
    return v1
.end method


# virtual methods
.method public a(Lz/a;)I
    .registers 4

    iget v0, p0, Lz/a;->c:I

    iget v1, p1, Lz/a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)Z
    .registers 5

    const/4 v0, 0x1

    iget v1, p0, Lz/a;->c:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lz/a;

    invoke-virtual {p0, p1}, Lz/a;->a(Lz/a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lz/a;

    if-eqz v1, :cond_e

    check-cast p1, Lz/a;

    iget v1, p1, Lz/a;->c:I

    iget v2, p0, Lz/a;->c:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lz/a;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :goto_d
    const/16 v4, 0x1f

    if-gt v2, v4, :cond_26

    invoke-virtual {p0, v2}, Lz/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_21

    if-nez v0, :cond_24

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    move v0, v1

    goto :goto_1e

    :cond_26
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
