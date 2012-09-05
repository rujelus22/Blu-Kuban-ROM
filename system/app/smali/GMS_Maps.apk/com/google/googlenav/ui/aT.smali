.class public Lcom/google/googlenav/ui/aT;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aQ;


# instance fields
.field private a:I

.field private b:[Lcom/google/googlenav/bW;

.field private c:Lcom/google/googlenav/bL;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>([Lcom/google/googlenav/bW;IILcom/google/googlenav/bL;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aT;->a:I

    iput-object p1, p0, Lcom/google/googlenav/ui/aT;->b:[Lcom/google/googlenav/bW;

    iput-object p4, p0, Lcom/google/googlenav/ui/aT;->c:Lcom/google/googlenav/bL;

    iput p2, p0, Lcom/google/googlenav/ui/aT;->e:I

    iput p3, p0, Lcom/google/googlenav/ui/aT;->f:I

    iput p5, p0, Lcom/google/googlenav/ui/aT;->d:I

    iput p6, p0, Lcom/google/googlenav/ui/aT;->a:I

    return-void
.end method

.method public static a(Z)I
    .registers 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public a(LaJ/Y;)I
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/aO;->b(LaJ/Y;)I

    move-result v0

    return v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()Lt/y;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/aT;->a:I

    return v0
.end method

.method public h()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aT;->a()Z

    move-result v0

    return v0
.end method

.method public i()I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()[LaJ/B;
    .registers 6

    iget v0, p0, Lcom/google/googlenav/ui/aT;->f:I

    iget v1, p0, Lcom/google/googlenav/ui/aT;->e:I

    sub-int/2addr v0, v1

    new-array v1, v0, [LaJ/B;

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_25

    iget-object v2, p0, Lcom/google/googlenav/ui/aT;->b:[Lcom/google/googlenav/bW;

    iget-object v3, p0, Lcom/google/googlenav/ui/aT;->c:Lcom/google/googlenav/bL;

    iget v4, p0, Lcom/google/googlenav/ui/aT;->e:I

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bL;->a(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/googlenav/bW;->av()Lcom/google/googlenav/bN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bN;->h()LaJ/B;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_25
    return-object v1
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/aT;->d:I

    return v0
.end method

.method public l()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public m()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public n()[[LaJ/B;
    .registers 2

    const/4 v0, 0x0

    check-cast v0, [[LaJ/B;

    return-object v0
.end method
