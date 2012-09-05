.class public Lcom/google/googlenav/ui/aO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aQ;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Lau/b;

.field private final d:I

.field private final e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lau/b;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/google/googlenav/ui/aO;-><init>(Lau/b;II)V

    return-void
.end method

.method public constructor <init>(Lau/b;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/aO;->f:I

    const v0, -0x57ffaf01

    iput v0, p0, Lcom/google/googlenav/ui/aO;->g:I

    iput-object p1, p0, Lcom/google/googlenav/ui/aO;->c:Lau/b;

    iput p2, p0, Lcom/google/googlenav/ui/aO;->d:I

    iput p3, p0, Lcom/google/googlenav/ui/aO;->e:I

    return-void
.end method

.method private static b()I
    .registers 2

    sget v0, Lcom/google/googlenav/ui/aO;->a:I

    if-nez v0, :cond_f

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/aO;->a:I

    :cond_f
    sget v0, Lcom/google/googlenav/ui/aO;->a:I

    return v0
.end method

.method public static b(LaJ/Y;)I
    .registers 3

    invoke-virtual {p0}, LaJ/Y;->a()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_d

    invoke-static {}, Lcom/google/googlenav/ui/aO;->b()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-static {}, Lcom/google/googlenav/ui/aO;->e()I

    move-result v0

    goto :goto_c
.end method

.method private static e()I
    .registers 2

    sget v0, Lcom/google/googlenav/ui/aO;->b:I

    if-nez v0, :cond_f

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/aO;->b:I

    :cond_f
    sget v0, Lcom/google/googlenav/ui/aO;->b:I

    return v0
.end method


# virtual methods
.method public a(LaJ/Y;)I
    .registers 3

    invoke-static {p1}, Lcom/google/googlenav/ui/aO;->b(LaJ/Y;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/aO;->f:I

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aO;->c:Lau/b;

    invoke-virtual {v0}, Lau/b;->w()Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/aO;->g:I

    return-void
.end method

.method public c()Lt/y;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aO;->c:Lau/b;

    invoke-virtual {v0}, Lau/b;->ag()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget v0, p0, Lcom/google/googlenav/ui/aO;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/ui/aO;->c:Lau/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lau/b;->n(I)Lau/s;

    move-result-object v0

    :goto_16
    invoke-virtual {v0}, Lau/s;->h()Lt/y;

    move-result-object v0

    goto :goto_9

    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/aO;->c:Lau/b;

    iget v1, p0, Lcom/google/googlenav/ui/aO;->d:I

    invoke-virtual {v0, v1}, Lau/b;->n(I)Lau/s;

    move-result-object v0

    goto :goto_16
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/aO;->f:I

    return v0
.end method

.method public h()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aO;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/googlenav/ui/aO;->j()[LaJ/B;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aO;->c:Lau/b;

    invoke-virtual {v0}, Lau/b;->L()I

    move-result v0

    return v0
.end method

.method public j()[LaJ/B;
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/aO;->c:Lau/b;

    iget v1, p0, Lcom/google/googlenav/ui/aO;->d:I

    iget v2, p0, Lcom/google/googlenav/ui/aO;->e:I

    invoke-virtual {v0, v1, v2}, Lau/b;->a(II)[LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/aO;->g:I

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
