.class public Lu/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lu/P;

.field private final b:I

.field private final c:I

.field private d:F

.field private e:F

.field private f:Z

.field private g:Lu/P;

.field private h:I

.field private i:I

.field private j:[Lu/b;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 12

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/high16 v1, -0x4080

    const/4 v7, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lu/i;->d:F

    iput v1, p0, Lu/i;->e:F

    const/16 v1, 0x2710

    iput v1, p0, Lu/i;->h:I

    const/4 v1, 0x3

    iput v1, p0, Lu/i;->i:I

    invoke-virtual {p1, v8}, Lam/b;->d(I)I

    move-result v1

    iput v1, p0, Lu/i;->b:I

    invoke-virtual {p1, v7}, Lam/b;->l(I)I

    move-result v2

    new-array v1, v2, [Lu/P;

    iput-object v1, p0, Lu/i;->a:[Lu/P;

    move v1, v0

    :goto_24
    if-ge v1, v2, :cond_37

    invoke-virtual {p1, v7, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    iget-object v4, p0, Lu/i;->a:[Lu/P;

    new-instance v5, Lu/P;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lu/P;-><init>(Lam/b;Ljava/lang/String;)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_37
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lam/b;->d(I)I

    move-result v1

    iput v1, p0, Lu/i;->i:I

    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Lam/b;->d(I)I

    move-result v1

    iput v1, p0, Lu/i;->c:I

    invoke-virtual {p1, v9}, Lam/b;->l(I)I

    move-result v1

    new-array v2, v1, [Lu/b;

    iput-object v2, p0, Lu/i;->j:[Lu/b;

    :goto_4e
    if-ge v0, v1, :cond_5f

    invoke-virtual {p1, v9, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    iget-object v3, p0, Lu/i;->j:[Lu/b;

    invoke-static {v2}, Lu/b;->a(Lam/b;)Lu/b;

    move-result-object v2

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_5f
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v0, v8}, Lam/b;->d(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lu/i;->d:F

    invoke-virtual {v0, v7}, Lam/b;->d(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lu/i;->e:F

    :cond_75
    return-void
.end method

.method public constructor <init>([Lu/P;II)V
    .registers 5

    const/high16 v0, -0x4080

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lu/i;->d:F

    iput v0, p0, Lu/i;->e:F

    const/16 v0, 0x2710

    iput v0, p0, Lu/i;->h:I

    const/4 v0, 0x3

    iput v0, p0, Lu/i;->i:I

    iput-object p1, p0, Lu/i;->a:[Lu/P;

    iput p2, p0, Lu/i;->b:I

    iput p3, p0, Lu/i;->c:I

    return-void
.end method


# virtual methods
.method public a()Lu/g;
    .registers 13

    new-instance v0, Lu/g;

    iget-object v1, p0, Lu/i;->a:[Lu/P;

    iget v2, p0, Lu/i;->b:I

    iget v3, p0, Lu/i;->d:F

    iget v4, p0, Lu/i;->e:F

    iget-boolean v5, p0, Lu/i;->f:Z

    iget-object v6, p0, Lu/i;->g:Lu/P;

    iget v7, p0, Lu/i;->h:I

    iget v8, p0, Lu/i;->i:I

    iget v9, p0, Lu/i;->c:I

    iget-object v10, p0, Lu/i;->j:[Lu/b;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lu/g;-><init>([Lu/P;IFFZLu/P;III[Lu/b;Lu/h;)V

    iget-object v1, p0, Lu/i;->a:[Lu/P;

    invoke-static {v1}, Lu/g;->a([Lu/P;)Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/g;->a(Lu/g;I)I

    :cond_26
    return-object v0
.end method

.method public a(FF)Lu/i;
    .registers 3

    iput p1, p0, Lu/i;->d:F

    iput p2, p0, Lu/i;->e:F

    return-object p0
.end method

.method public a(I)Lu/i;
    .registers 2

    iput p1, p0, Lu/i;->h:I

    return-object p0
.end method

.method public a(Lu/P;)Lu/i;
    .registers 2

    iput-object p1, p0, Lu/i;->g:Lu/P;

    return-object p0
.end method

.method public a(Z)Lu/i;
    .registers 2

    iput-boolean p1, p0, Lu/i;->f:Z

    return-object p0
.end method

.method public a([Lu/b;)Lu/i;
    .registers 2

    iput-object p1, p0, Lu/i;->j:[Lu/b;

    return-object p0
.end method

.method public b(I)Lu/i;
    .registers 2

    iput p1, p0, Lu/i;->i:I

    return-object p0
.end method
