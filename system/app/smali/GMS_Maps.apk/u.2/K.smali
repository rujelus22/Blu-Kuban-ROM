.class public Lu/K;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:Lu/I;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/K;->a:I

    iput-object p2, p0, Lu/K;->c:Ljava/lang/String;

    iput-object p3, p0, Lu/K;->d:Ljava/lang/String;

    iput-object p4, p0, Lu/K;->e:Ljava/lang/String;

    iput-object p5, p0, Lu/K;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lu/K;->g:Z

    return-void
.end method

.method static synthetic a(Lam/b;)Lu/K;
    .registers 2

    invoke-static {p0}, Lu/K;->b(Lam/b;)Lu/K;

    move-result-object v0

    return-object v0
.end method

.method private a(Lu/I;)V
    .registers 2

    iput-object p1, p0, Lu/K;->b:Lu/I;

    return-void
.end method

.method static synthetic a(Lu/K;Lu/I;)V
    .registers 2

    invoke-direct {p0, p1}, Lu/K;->a(Lu/I;)V

    return-void
.end method

.method private static b(Lam/b;)Lu/K;
    .registers 9

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lam/b;->d(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v7}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v5

    :goto_20
    invoke-virtual {p0, v6}, Lam/b;->d(I)I

    move-result v0

    if-ne v0, v7, :cond_2c

    :goto_26
    new-instance v0, Lu/K;

    invoke-direct/range {v0 .. v6}, Lu/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_2c
    const/4 v6, 0x0

    goto :goto_26

    :cond_2e
    move-object v4, v5

    goto :goto_20
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lu/K;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/K;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/K;->d:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lu/K;->c:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lu/K;->d:Ljava/lang/String;

    goto :goto_6
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/K;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/K;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lu/K;->g:Z

    return v0
.end method

.method public g()Lu/I;
    .registers 2

    iget-object v0, p0, Lu/K;->b:Lu/I;

    return-object v0
.end method
