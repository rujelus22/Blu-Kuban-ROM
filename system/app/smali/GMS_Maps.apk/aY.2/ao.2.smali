.class public LaY/ao;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Z

.field private final b:[Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:[Z

.field private final j:[Z

.field private final k:[Z

.field private final l:[Z

.field private final m:[Z

.field private n:Z


# direct methods
.method public constructor <init>([I[II)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget v0, p1, v1

    new-array v0, v0, [Z

    iput-object v0, p0, LaY/ao;->a:[Z

    aget v0, p1, v2

    new-array v0, v0, [Z

    iput-object v0, p0, LaY/ao;->b:[Z

    iput-boolean v1, p0, LaY/ao;->c:Z

    aget v0, p2, v1

    new-array v0, v0, [Z

    iput-object v0, p0, LaY/ao;->i:[Z

    aget v0, p2, v2

    new-array v0, v0, [Z

    iput-object v0, p0, LaY/ao;->j:[Z

    const/4 v0, 0x2

    aget v0, p2, v0

    new-array v0, v0, [Z

    iput-object v0, p0, LaY/ao;->k:[Z

    const/4 v0, 0x3

    aget v0, p2, v0

    new-array v0, v0, [Z

    iput-object v0, p0, LaY/ao;->l:[Z

    new-array v0, p3, [Z

    iput-object v0, p0, LaY/ao;->m:[Z

    return-void
.end method

.method private d(I)[Z
    .registers 3

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, LaY/ao;->i:[Z

    goto :goto_4

    :pswitch_8
    iget-object v0, p0, LaY/ao;->j:[Z

    goto :goto_4

    :pswitch_b
    iget-object v0, p0, LaY/ao;->k:[Z

    goto :goto_4

    :pswitch_e
    iget-object v0, p0, LaY/ao;->l:[Z

    goto :goto_4

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_b
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public a(IZ)V
    .registers 4

    iget-object v0, p0, LaY/ao;->b:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_9

    iget-object v0, p0, LaY/ao;->b:[Z

    aput-boolean p2, v0, p1

    :cond_9
    return-void
.end method

.method public a(IZI)V
    .registers 6

    invoke-direct {p0, p3}, LaY/ao;->d(I)[Z

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_9

    aput-boolean p2, v0, p1

    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 5

    const/4 v1, 0x0

    iput-boolean p1, p0, LaY/ao;->c:Z

    if-nez p1, :cond_12

    move v0, v1

    :goto_6
    iget-object v2, p0, LaY/ao;->b:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_12

    iget-object v2, p0, LaY/ao;->b:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, LaY/ao;->c:Z

    return v0
.end method

.method public a(I)Z
    .registers 3

    iget-object v0, p0, LaY/ao;->b:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, LaY/ao;->b:[Z

    aget-boolean v0, v0, p1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(II)Z
    .registers 5

    invoke-direct {p0, p2}, LaY/ao;->d(I)[Z

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_a

    aget-boolean v0, v0, p1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b(IZ)V
    .registers 4

    iget-object v0, p0, LaY/ao;->a:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_9

    iget-object v0, p0, LaY/ao;->a:[Z

    aput-boolean p2, v0, p1

    :cond_9
    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/ao;->h:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, LaY/ao;->h:Z

    return v0
.end method

.method public b(I)Z
    .registers 3

    iget-object v0, p0, LaY/ao;->a:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, LaY/ao;->a:[Z

    aget-boolean v0, v0, p1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c(IZ)V
    .registers 4

    iget-object v0, p0, LaY/ao;->m:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_9

    iget-object v0, p0, LaY/ao;->m:[Z

    aput-boolean p2, v0, p1

    :cond_9
    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/ao;->d:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, LaY/ao;->d:Z

    return v0
.end method

.method public c(I)Z
    .registers 3

    iget-object v0, p0, LaY/ao;->m:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_a

    iget-object v0, p0, LaY/ao;->m:[Z

    aget-boolean v0, v0, p1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/ao;->e:Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, LaY/ao;->e:Z

    return v0
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/ao;->f:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LaY/ao;->f:Z

    return v0
.end method

.method public f(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/ao;->g:Z

    return-void
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, LaY/ao;->g:Z

    return v0
.end method

.method public g(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/ao;->n:Z

    return-void
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, LaY/ao;->n:Z

    return v0
.end method
