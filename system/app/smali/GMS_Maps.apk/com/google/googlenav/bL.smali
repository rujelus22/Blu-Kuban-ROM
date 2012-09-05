.class public Lcom/google/googlenav/bL;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bJ;

.field private final b:Ljava/lang/String;

.field private final c:[I

.field private final d:I

.field private final e:Lcom/google/googlenav/bV;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bJ;Ljava/lang/String;Lcom/google/googlenav/bV;[II)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/bL;->a:Lcom/google/googlenav/bJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/bL;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/bL;->e:Lcom/google/googlenav/bV;

    iput-object p4, p0, Lcom/google/googlenav/bL;->c:[I

    iput p5, p0, Lcom/google/googlenav/bL;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bL;->c:[I

    array-length v0, v0

    return v0
.end method

.method public a(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/bL;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public b(I)Lcom/google/googlenav/bN;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/bL;->a:Lcom/google/googlenav/bJ;

    invoke-static {v0}, Lcom/google/googlenav/bJ;->a(Lcom/google/googlenav/bJ;)LK/bn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bL;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, LK/bn;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bW;

    invoke-virtual {v0}, Lcom/google/googlenav/bW;->av()Lcom/google/googlenav/bN;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bL;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bL;->d:I

    return v0
.end method

.method public d()Lcom/google/googlenav/bV;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/bL;->e:Lcom/google/googlenav/bV;

    return-object v0
.end method
