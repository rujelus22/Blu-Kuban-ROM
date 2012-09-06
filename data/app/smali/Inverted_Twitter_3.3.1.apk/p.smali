.class public final Lp;
.super Lorg/codehaus/jackson/b;


# instance fields
.field protected final c:Lp;

.field protected d:Ljava/lang/String;

.field protected e:Lp;


# direct methods
.method private constructor <init>(ILp;)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/jackson/b;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lp;->e:Lp;

    iput p1, p0, Lp;->a:I

    iput-object p2, p0, Lp;->c:Lp;

    const/4 v0, -0x1

    iput v0, p0, Lp;->b:I

    return-void
.end method

.method private final a(I)Lp;
    .registers 3

    iput p1, p0, Lp;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lp;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lp;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static g()Lp;
    .registers 3

    new-instance v0, Lp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lp;-><init>(ILp;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x4

    iget v1, p0, Lp;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lp;->d:Ljava/lang/String;

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iput-object p1, p0, Lp;->d:Ljava/lang/String;

    iget v0, p0, Lp;->b:I

    if-gez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public final h()Lp;
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lp;->e:Lp;

    if-nez v0, :cond_d

    new-instance v0, Lp;

    invoke-direct {v0, v1, p0}, Lp;-><init>(ILp;)V

    iput-object v0, p0, Lp;->e:Lp;

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {v0, v1}, Lp;->a(I)Lp;

    move-result-object v0

    goto :goto_c
.end method

.method public final i()Lp;
    .registers 3

    const/4 v1, 0x2

    iget-object v0, p0, Lp;->e:Lp;

    if-nez v0, :cond_d

    new-instance v0, Lp;

    invoke-direct {v0, v1, p0}, Lp;-><init>(ILp;)V

    iput-object v0, p0, Lp;->e:Lp;

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {v0, v1}, Lp;->a(I)Lp;

    move-result-object v0

    goto :goto_c
.end method

.method public final j()Lp;
    .registers 2

    iget-object v0, p0, Lp;->c:Lp;

    return-object v0
.end method

.method public final k()I
    .registers 5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lp;->a:I

    if-ne v3, v0, :cond_17

    iget-object v1, p0, Lp;->d:Ljava/lang/String;

    if-nez v1, :cond_d

    const/4 v0, 0x5

    :goto_c
    return v0

    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lp;->d:Ljava/lang/String;

    iget v1, p0, Lp;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lp;->b:I

    goto :goto_c

    :cond_17
    iget v0, p0, Lp;->a:I

    if-ne v0, v2, :cond_29

    iget v0, p0, Lp;->b:I

    iget v3, p0, Lp;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lp;->b:I

    if-gez v0, :cond_27

    move v0, v1

    goto :goto_c

    :cond_27
    move v0, v2

    goto :goto_c

    :cond_29
    iget v0, p0, Lp;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->b:I

    iget v0, p0, Lp;->b:I

    if-nez v0, :cond_35

    move v0, v1

    goto :goto_c

    :cond_35
    const/4 v0, 0x3

    goto :goto_c
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x5d

    const/16 v3, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lp;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp;->d:Ljava/lang/String;

    if-eqz v1, :cond_2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_32
    iget v1, p0, Lp;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_47
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27
.end method
