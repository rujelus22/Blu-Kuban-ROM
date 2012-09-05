.class Lcom/google/googlenav/bG;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/bG;->a:I

    iput p2, p0, Lcom/google/googlenav/bG;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bG;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/bG;->b:I

    return-void
.end method

.method public a(Lcom/google/googlenav/bG;)Z
    .registers 4

    iget v0, p0, Lcom/google/googlenav/bG;->a:I

    iget v1, p1, Lcom/google/googlenav/bG;->a:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/bG;->b:I

    return v0
.end method
