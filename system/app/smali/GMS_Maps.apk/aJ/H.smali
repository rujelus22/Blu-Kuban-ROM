.class public LaJ/H;
.super Ljava/lang/Object;


# instance fields
.field private final a:LaJ/B;

.field private final b:LaJ/Y;

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(LaJ/B;LaJ/Y;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    return-void
.end method

.method public constructor <init>(LaJ/B;LaJ/Y;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaJ/H;->a:LaJ/B;

    iput-object p2, p0, LaJ/H;->b:LaJ/Y;

    iput p3, p0, LaJ/H;->c:I

    iput-boolean p4, p0, LaJ/H;->d:Z

    return-void
.end method

.method public static h()LaJ/H;
    .registers 4

    const/4 v3, 0x0

    new-instance v0, LaJ/H;

    new-instance v1, LaJ/B;

    invoke-direct {v1, v3, v3}, LaJ/B;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v2}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, LaJ/H;-><init>(LaJ/B;LaJ/Y;I)V

    return-object v0
.end method


# virtual methods
.method public a()LaJ/B;
    .registers 2

    iget-object v0, p0, LaJ/H;->a:LaJ/B;

    return-object v0
.end method

.method public a(I)LaJ/H;
    .registers 6

    new-instance v0, LaJ/H;

    iget-object v1, p0, LaJ/H;->a:LaJ/B;

    iget-object v2, p0, LaJ/H;->b:LaJ/Y;

    iget-boolean v3, p0, LaJ/H;->d:Z

    invoke-direct {v0, v1, v2, p1, v3}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    return-object v0
.end method

.method public a(LaJ/B;)LaJ/H;
    .registers 6

    new-instance v0, LaJ/H;

    iget-object v1, p0, LaJ/H;->b:LaJ/Y;

    iget v2, p0, LaJ/H;->c:I

    iget-boolean v3, p0, LaJ/H;->d:Z

    invoke-direct {v0, p1, v1, v2, v3}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    return-object v0
.end method

.method public a(LaJ/Y;)LaJ/H;
    .registers 6

    new-instance v0, LaJ/H;

    iget-object v1, p0, LaJ/H;->a:LaJ/B;

    iget v2, p0, LaJ/H;->c:I

    iget-boolean v3, p0, LaJ/H;->d:Z

    invoke-direct {v0, v1, p1, v2, v3}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    return-object v0
.end method

.method public a(Z)LaJ/H;
    .registers 6

    new-instance v0, LaJ/H;

    iget-object v1, p0, LaJ/H;->a:LaJ/B;

    iget-object v2, p0, LaJ/H;->b:LaJ/Y;

    iget v3, p0, LaJ/H;->c:I

    invoke-direct {v0, v1, v2, v3, p1}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    return-object v0
.end method

.method public b()LaJ/Y;
    .registers 2

    iget-object v0, p0, LaJ/H;->b:LaJ/Y;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, LaJ/H;->c:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget v0, p0, LaJ/H;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public e()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, LaJ/H;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()Z
    .registers 3

    iget v0, p0, LaJ/H;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, LaJ/H;->d:Z

    return v0
.end method
