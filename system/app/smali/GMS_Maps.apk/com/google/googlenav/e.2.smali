.class public Lcom/google/googlenav/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lah/f;

.field private final b:I

.field private final c:I

.field private d:Z


# direct methods
.method private constructor <init>(Lah/f;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/e;->d:Z

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lcom/google/googlenav/e;->a:Lah/f;

    iput p2, p0, Lcom/google/googlenav/e;->b:I

    iput p3, p0, Lcom/google/googlenav/e;->c:I

    return-void
.end method

.method public static a(Lah/f;)Lcom/google/googlenav/e;
    .registers 4

    new-instance v0, Lcom/google/googlenav/e;

    invoke-interface {p0}, Lah/f;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p0}, Lah/f;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/e;-><init>(Lah/f;II)V

    return-object v0
.end method

.method public static a(Lah/f;II)Lcom/google/googlenav/e;
    .registers 4

    new-instance v0, Lcom/google/googlenav/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/e;-><init>(Lah/f;II)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/e;Lcom/google/googlenav/ui/C;II)V
    .registers 8

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    if-eqz v0, :cond_21

    if-eqz p0, :cond_21

    invoke-virtual {p1}, Lcom/google/googlenav/ui/C;->b()Lah/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/e;->a()Lah/f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/e;->b()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/google/googlenav/e;->c()I

    move-result v3

    sub-int v3, p3, v3

    invoke-interface {v0, v1, v2, v3}, Lah/e;->a(Lah/f;II)V

    :cond_21
    return-void
.end method

.method public static b(Lah/f;)Lcom/google/googlenav/e;
    .registers 4

    new-instance v0, Lcom/google/googlenav/e;

    invoke-interface {p0}, Lah/f;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {p0}, Lah/f;->b()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/e;-><init>(Lah/f;II)V

    return-object v0
.end method

.method public static c(Lah/f;)Lcom/google/googlenav/e;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/google/googlenav/e;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/googlenav/e;-><init>(Lah/f;II)V

    return-object v0
.end method


# virtual methods
.method public a()Lah/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/e;->a:Lah/f;

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/e;->d:Z

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/e;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/e;->c:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/e;->d:Z

    return v0
.end method

.method public e()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/e;->a:Lah/f;

    invoke-interface {v0}, Lah/f;->a()I

    move-result v0

    return v0
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/e;->a:Lah/f;

    invoke-interface {v0}, Lah/f;->b()I

    move-result v0

    return v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/e;->a:Lah/f;

    invoke-interface {v0}, Lah/f;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
