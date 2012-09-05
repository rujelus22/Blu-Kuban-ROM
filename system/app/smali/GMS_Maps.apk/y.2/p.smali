.class public final Ly/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ly/p;


# instance fields
.field private final b:[Ly/s;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly/p;

    invoke-direct {v0}, Ly/p;-><init>()V

    sput-object v0, Ly/p;->a:Ly/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [Ly/s;

    iput-object v0, p0, Ly/p;->b:[Ly/s;

    iget-object v0, p0, Ly/p;->b:[Ly/s;

    sget-object v1, Ly/o;->a:Ly/o;

    aput-object v1, v0, v2

    iput v2, p0, Ly/p;->c:I

    return-void
.end method

.method private a(I)V
    .registers 5

    :goto_0
    iget v0, p0, Ly/p;->c:I

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Ly/p;->b:[Ly/s;

    iget-object v1, p0, Ly/p;->b:[Ly/s;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_11
    iget v0, p0, Ly/p;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ly/p;->c:I

    return-void
.end method

.method private a(Ly/s;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Ly/p;->b:[Ly/s;

    iget v3, p0, Ly/p;->c:I

    aget-object v2, v2, v3

    sget-object v3, Ly/o;->a:Ly/o;

    if-ne v2, v3, :cond_13

    sget-object v2, Ly/B;->a:Ly/B;

    if-ne p1, v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10

    :cond_13
    sget-object v3, Ly/B;->a:Ly/B;

    if-ne v2, v3, :cond_1d

    sget-object v2, Ly/C;->a:Ly/C;

    if-eq p1, v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_1d
    sget-object v3, Ly/C;->a:Ly/C;

    if-ne v2, v3, :cond_2c

    sget-object v2, Ly/z;->a:Ly/z;

    if-eq p1, v2, :cond_29

    sget-object v2, Ly/y;->a:Ly/y;

    if-ne p1, v2, :cond_2a

    :cond_29
    move v1, v0

    :cond_2a
    move v0, v1

    goto :goto_10

    :cond_2c
    sget-object v3, Ly/z;->a:Ly/z;

    if-ne v2, v3, :cond_36

    sget-object v2, Ly/y;->a:Ly/y;

    if-eq p1, v2, :cond_10

    move v0, v1

    goto :goto_10

    :cond_36
    sget-object v3, Ly/y;->a:Ly/y;

    if-ne v2, v3, :cond_10

    sget-object v2, Ly/a;->a:Ly/a;

    if-eq p1, v2, :cond_10

    move v0, v1

    goto :goto_10
.end method


# virtual methods
.method public a()Ly/s;
    .registers 3

    iget-object v0, p0, Ly/p;->b:[Ly/s;

    iget v1, p0, Ly/p;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a(Ly/r;)V
    .registers 7

    iget-object v0, p0, Ly/p;->b:[Ly/s;

    iget v1, p0, Ly/p;->c:I

    aget-object v2, v0, v1

    invoke-static {p1}, Ly/r;->a(Ly/r;)Ly/s;

    move-result-object v3

    invoke-static {p1}, Ly/r;->b(Ly/r;)I

    move-result v0

    new-instance v1, Lq/y;

    invoke-direct {v1, v2, v3}, Lq/y;-><init>(Ly/s;Ly/s;)V

    invoke-static {v1}, LC/f;->b(LC/j;)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_24

    iget-object v4, p0, Ly/p;->b:[Ly/s;

    aget-object v4, v4, v1

    if-ne v4, v3, :cond_49

    invoke-direct {p0, v1}, Ly/p;->a(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_24
    iget v1, p0, Ly/p;->c:I

    if-le v0, v1, :cond_2b

    invoke-virtual {v2}, Ly/s;->q()V

    :cond_2b
    invoke-virtual {v2}, Ly/s;->e()V

    iput v0, p0, Ly/p;->c:I

    iget-object v0, p0, Ly/p;->b:[Ly/s;

    iget v1, p0, Ly/p;->c:I

    aput-object v3, v0, v1

    invoke-virtual {v3}, Ly/s;->b()V

    invoke-static {p1}, Ly/r;->c(Ly/r;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v3}, Ly/s;->r()V

    :cond_42
    invoke-virtual {v3}, Ly/s;->D()V

    invoke-virtual {v3}, Ly/s;->d()V

    return-void

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public a(Ly/s;Z)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Ly/p;->b:[Ly/s;

    iget v1, p0, Ly/p;->c:I

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_c

    move v4, v6

    :cond_b
    :goto_b
    return v4

    :cond_c
    invoke-direct {p0, p1}, Ly/p;->a(Ly/s;)Z

    move-result v1

    if-nez v1, :cond_43

    invoke-static {}, Ln/a;->b()Z

    move-result v1

    if-nez v1, :cond_43

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to transition from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ly/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ly/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    new-instance v0, Ly/r;

    if-eqz p2, :cond_5e

    iget v3, p0, Ly/p;->c:I

    :goto_49
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ly/r;-><init>(Ly/p;Ly/s;IZLy/q;)V

    invoke-virtual {p0}, Ly/p;->a()Ly/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Ly/s;->a(Ly/r;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0}, Ly/p;->a(Ly/r;)V

    move v4, v6

    goto :goto_b

    :cond_5e
    iget v1, p0, Ly/p;->c:I

    add-int/lit8 v3, v1, 0x1

    goto :goto_49
.end method

.method public b()V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Ly/p;->b:[Ly/s;

    iget v1, p0, Ly/p;->c:I

    aget-object v0, v0, v1

    sget-object v1, Ly/o;->a:Ly/o;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Ly/p;->b:[Ly/s;

    iget v1, p0, Ly/p;->c:I

    aget-object v0, v0, v1

    sget-object v1, Ly/B;->a:Ly/B;

    if-eq v0, v1, :cond_22

    new-instance v0, Ly/r;

    sget-object v2, Ly/z;->a:Ly/z;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Ly/r;-><init>(Ly/p;Ly/s;IZLy/q;)V

    invoke-virtual {p0, v0}, Ly/p;->a(Ly/r;)V

    :cond_22
    return-void
.end method

.method public c()Z
    .registers 7

    const/4 v4, 0x1

    iget v0, p0, Ly/p;->c:I

    if-lt v0, v4, :cond_26

    new-instance v0, Ly/r;

    iget-object v1, p0, Ly/p;->b:[Ly/s;

    iget v2, p0, Ly/p;->c:I

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    iget v1, p0, Ly/p;->c:I

    add-int/lit8 v3, v1, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ly/r;-><init>(Ly/p;Ly/s;IZLy/q;)V

    invoke-virtual {p0}, Ly/p;->a()Ly/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Ly/s;->a(Ly/r;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0, v0}, Ly/p;->a(Ly/r;)V

    :cond_25
    :goto_25
    return v4

    :cond_26
    const/4 v4, 0x0

    goto :goto_25
.end method
