.class public Lt/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lt/y;


# direct methods
.method private constructor <init>(Lt/r;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt/u;->a:Ljava/util/List;

    iput-object p3, p0, Lt/u;->b:Ljava/lang/String;

    iput-object p4, p0, Lt/u;->c:Ljava/lang/String;

    iput p5, p0, Lt/u;->d:I

    new-instance v0, Lt/y;

    invoke-direct {v0, p1, p6}, Lt/y;-><init>(Lt/r;I)V

    iput-object v0, p0, Lt/u;->e:Lt/y;

    return-void
.end method

.method public static a(Lam/b;)Lt/u;
    .registers 10

    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v3

    invoke-static {v3}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v5

    :goto_1b
    if-ge v0, v3, :cond_2d

    invoke-virtual {p0, v6, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lt/r;->a(Ljava/lang/String;)Lt/r;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2d
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_3d

    if-eqz v4, :cond_5c

    move-object v0, v4

    :goto_3c
    move-object v3, v0

    :cond_3d
    if-nez v4, :cond_40

    move-object v4, v3

    :cond_40
    invoke-virtual {p0, v7}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0, v7}, Lam/b;->d(I)I

    move-result v5

    :cond_4a
    const/high16 v6, -0x8000

    invoke-virtual {p0, v8}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, v8}, Lam/b;->d(I)I

    move-result v6

    :cond_56
    new-instance v0, Lt/u;

    invoke-direct/range {v0 .. v6}, Lt/u;-><init>(Lt/r;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_11

    :cond_5c
    const-string v0, ""

    goto :goto_3c
.end method


# virtual methods
.method public a()Lt/y;
    .registers 2

    iget-object v0, p0, Lt/u;->e:Lt/y;

    return-object v0
.end method

.method public b()Lt/r;
    .registers 2

    iget-object v0, p0, Lt/u;->e:Lt/y;

    invoke-virtual {v0}, Lt/y;->a()Lt/r;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lt/u;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lt/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lt/u;->d:I

    return v0
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lt/u;->e:Lt/y;

    invoke-virtual {v0}, Lt/y;->b()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/u;->e:Lt/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
