.class public Lu/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:[Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;II[Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/e;->a:I

    iput-object p2, p0, Lu/e;->b:Ljava/lang/String;

    iput p3, p0, Lu/e;->c:I

    iput p4, p0, Lu/e;->d:I

    iput-object p5, p0, Lu/e;->e:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lu/e;)I
    .registers 2

    iget v0, p0, Lu/e;->a:I

    return v0
.end method

.method public static a(Lam/b;)Lu/e;
    .registers 11

    const/4 v9, 0x4

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lam/b;->d(I)I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lam/b;->d(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v3, :cond_17

    if-eq v3, v2, :cond_17

    move v3, v0

    :cond_17
    if-ne v3, v2, :cond_20

    invoke-virtual {p0, v9}, Lam/b;->l(I)I

    move-result v6

    if-nez v6, :cond_30

    move v3, v0

    :cond_20
    :goto_20
    if-ltz v4, :cond_24

    if-le v4, v2, :cond_25

    :cond_24
    move v3, v0

    :cond_25
    new-instance v0, Lu/e;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lu/e;-><init>(ILjava/lang/String;II[Ljava/lang/String;)V

    return-object v0

    :cond_30
    new-array v5, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v6, :cond_43

    invoke-virtual {p0, v9, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_43
    add-int/lit8 v2, v6, -0x1

    goto :goto_20
.end method

.method static synthetic b(Lu/e;)I
    .registers 2

    iget v0, p0, Lu/e;->c:I

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lu/e;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lu/e;

    if-eqz v2, :cond_37

    check-cast p1, Lu/e;

    iget v2, p1, Lu/e;->a:I

    iget v3, p0, Lu/e;->a:I

    if-ne v2, v3, :cond_35

    iget-object v2, p1, Lu/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lu/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p1, Lu/e;->c:I

    iget v3, p0, Lu/e;->c:I

    if-ne v2, v3, :cond_35

    iget v2, p1, Lu/e;->d:I

    iget v3, p1, Lu/e;->d:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Lu/e;->c:I

    if-ne v2, v0, :cond_4

    iget-object v2, p1, Lu/e;->e:[Ljava/lang/String;

    iget-object v3, p0, Lu/e;->e:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4

    :cond_37
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lu/e;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[option "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lu/e;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "text="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lu/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lu/e;->c:I

    if-nez v0, :cond_65

    const-string v0, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    :goto_38
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "default="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lu/e;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lu/e;->c:I

    if-ne v0, v3, :cond_7f

    const-string v0, ", choices={ "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lu/e;->e:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_55
    if-ge v0, v3, :cond_7a

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_65
    iget v0, p0, Lu/e;->c:I

    if-ne v0, v3, :cond_6f

    const-string v0, "choice"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_6f
    iget v0, p0, Lu/e;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_38

    const-string v0, "invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_7a
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
