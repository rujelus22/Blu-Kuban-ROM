.class Lx/aq;
.super Ljava/lang/Object;


# instance fields
.field public a:Lt/X;

.field public b:Z


# direct methods
.method public constructor <init>(Lt/X;F)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/aq;->a:Lt/X;

    iget-object v1, p0, Lx/aq;->a:Lt/X;

    invoke-virtual {v1}, Lt/X;->b()Lt/P;

    move-result-object v1

    invoke-virtual {v1, v0}, Lt/P;->c(I)F

    move-result v1

    invoke-static {v1, p2}, Lt/N;->a(FF)F

    move-result v1

    const/high16 v2, 0x42b4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    iput-boolean v0, p0, Lx/aq;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lt/L;
    .registers 3

    iget-object v0, p0, Lx/aq;->a:Lt/X;

    invoke-virtual {v0}, Lt/X;->b()Lt/P;

    move-result-object v0

    iget-boolean v1, p0, Lx/aq;->b:Z

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lt/P;->c()Lt/L;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    goto :goto_e
.end method

.method public a(Lt/X;)Z
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lx/aq;->a:Lt/X;

    invoke-virtual {v2}, Lt/X;->c()I

    move-result v2

    if-ge v0, v2, :cond_22

    move v2, v1

    :goto_b
    invoke-virtual {p1}, Lt/X;->c()I

    move-result v3

    if-ge v2, v3, :cond_26

    iget-object v3, p0, Lx/aq;->a:Lt/X;

    invoke-virtual {v3, v0}, Lt/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Lt/X;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v1, 0x1

    :cond_22
    return v1

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public b()F
    .registers 3

    iget-object v0, p0, Lx/aq;->a:Lt/X;

    invoke-virtual {v0}, Lt/X;->b()Lt/P;

    move-result-object v0

    iget-boolean v1, p0, Lx/aq;->b:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lt/P;->c(I)F

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lt/P;->c(I)F

    move-result v0

    invoke-static {v0}, Lx/ap;->a(F)F

    move-result v0

    goto :goto_14
.end method
