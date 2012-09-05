.class public final Lt/au;
.super Lt/av;


# instance fields
.field private b:Lt/V;

.field private c:Lt/L;

.field private d:Lt/L;

.field private e:I

.field private f:I

.field private g:I

.field private volatile h:Lt/L;

.field private volatile i:Lt/L;

.field private volatile j:Lt/L;

.field private volatile k:Lt/L;

.field private volatile l:Lt/L;

.field private volatile m:Lt/L;


# direct methods
.method private constructor <init>(Lt/V;)V
    .registers 6

    const/high16 v3, 0x4000

    invoke-direct {p0}, Lt/av;-><init>()V

    iput-object p1, p0, Lt/au;->b:Lt/V;

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v1

    invoke-virtual {p1}, Lt/V;->e()Lt/L;

    move-result-object v2

    iget v0, v1, Lt/L;->a:I

    if-gez v0, :cond_4c

    iget v0, v1, Lt/L;->a:I

    neg-int v0, v0

    iput v0, p0, Lt/au;->e:I

    :cond_18
    :goto_18
    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lt/au;->c:Lt/L;

    iget-object v0, p0, Lt/au;->c:Lt/L;

    invoke-virtual {v1, v0}, Lt/L;->i(Lt/L;)V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lt/au;->d:Lt/L;

    iget-object v0, p0, Lt/au;->d:Lt/L;

    invoke-virtual {v2, v0}, Lt/L;->i(Lt/L;)V

    iget-object v0, p0, Lt/au;->c:Lt/L;

    iget v0, v0, Lt/L;->a:I

    iget-object v3, p0, Lt/au;->d:Lt/L;

    iget v3, v3, Lt/L;->a:I

    if-le v0, v3, :cond_57

    const/4 v0, 0x1

    :goto_3b
    iput-boolean v0, p0, Lt/au;->a:Z

    iget v0, v1, Lt/L;->a:I

    iget v1, p0, Lt/au;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lt/au;->f:I

    iget v0, v2, Lt/L;->a:I

    iget v1, p0, Lt/au;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lt/au;->g:I

    return-void

    :cond_4c
    iget v0, v2, Lt/L;->a:I

    if-le v0, v3, :cond_18

    iget v0, v2, Lt/L;->a:I

    sub-int v0, v3, v0

    iput v0, p0, Lt/au;->e:I

    goto :goto_18

    :cond_57
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public static a(Lt/V;)Lt/au;
    .registers 2

    new-instance v0, Lt/au;

    invoke-direct {v0, p0}, Lt/au;-><init>(Lt/V;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Lt/L;
    .registers 5

    packed-switch p1, :pswitch_data_3c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :pswitch_9
    iget-object v0, p0, Lt/au;->h:Lt/L;

    if-nez v0, :cond_1c

    new-instance v0, Lt/L;

    iget-object v1, p0, Lt/au;->d:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p0, Lt/au;->c:Lt/L;

    iget v2, v2, Lt/L;->b:I

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lt/au;->h:Lt/L;

    :cond_1c
    iget-object v0, p0, Lt/au;->h:Lt/L;

    :goto_1e
    return-object v0

    :pswitch_1f
    iget-object v0, p0, Lt/au;->d:Lt/L;

    goto :goto_1e

    :pswitch_22
    iget-object v0, p0, Lt/au;->i:Lt/L;

    if-nez v0, :cond_35

    new-instance v0, Lt/L;

    iget-object v1, p0, Lt/au;->c:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p0, Lt/au;->d:Lt/L;

    iget v2, v2, Lt/L;->b:I

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lt/au;->i:Lt/L;

    :cond_35
    iget-object v0, p0, Lt/au;->i:Lt/L;

    goto :goto_1e

    :pswitch_38
    iget-object v0, p0, Lt/au;->c:Lt/L;

    goto :goto_1e

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1f
        :pswitch_22
        :pswitch_38
    .end packed-switch
.end method

.method public a()Lt/au;
    .registers 1

    return-object p0
.end method

.method public a(I[Lt/L;)V
    .registers 9

    const/4 v1, 0x3

    const/4 v5, 0x2

    const v2, -0x20000001

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lt/au;->a:Z

    if-eqz v0, :cond_96

    packed-switch p1, :pswitch_data_a8

    :goto_e
    return-void

    :pswitch_f
    invoke-virtual {p0, v3}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p0, v4}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_e

    :pswitch_1c
    invoke-virtual {p0, v4}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, Lt/au;->j:Lt/L;

    if-nez v0, :cond_31

    new-instance v0, Lt/L;

    iget-object v1, p0, Lt/au;->d:Lt/L;

    iget v1, v1, Lt/L;->b:I

    invoke-direct {v0, v2, v1}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lt/au;->j:Lt/L;

    :cond_31
    iget-object v0, p0, Lt/au;->j:Lt/L;

    aput-object v0, p2, v4

    goto :goto_e

    :pswitch_36
    iget-object v0, p0, Lt/au;->k:Lt/L;

    if-nez v0, :cond_47

    new-instance v0, Lt/L;

    const/high16 v1, 0x2000

    iget-object v2, p0, Lt/au;->d:Lt/L;

    iget v2, v2, Lt/L;->b:I

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lt/au;->k:Lt/L;

    :cond_47
    iget-object v0, p0, Lt/au;->k:Lt/L;

    aput-object v0, p2, v3

    invoke-virtual {p0, v5}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_e

    :pswitch_52
    invoke-virtual {p0, v5}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p0, v1}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v4

    goto :goto_e

    :pswitch_5f
    invoke-virtual {p0, v1}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, Lt/au;->l:Lt/L;

    if-nez v0, :cond_76

    new-instance v0, Lt/L;

    const/high16 v1, 0x2000

    iget-object v2, p0, Lt/au;->c:Lt/L;

    iget v2, v2, Lt/L;->b:I

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lt/au;->l:Lt/L;

    :cond_76
    iget-object v0, p0, Lt/au;->l:Lt/L;

    aput-object v0, p2, v4

    goto :goto_e

    :pswitch_7b
    iget-object v0, p0, Lt/au;->m:Lt/L;

    if-nez v0, :cond_8a

    new-instance v0, Lt/L;

    iget-object v1, p0, Lt/au;->c:Lt/L;

    iget v1, v1, Lt/L;->b:I

    invoke-direct {v0, v2, v1}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lt/au;->m:Lt/L;

    :cond_8a
    iget-object v0, p0, Lt/au;->m:Lt/L;

    aput-object v0, p2, v3

    invoke-virtual {p0, v3}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_e

    :cond_96
    invoke-virtual {p0, p1}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v3

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lt/au;->a(I)Lt/L;

    move-result-object v0

    aput-object v0, p2, v4

    goto/16 :goto_e

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1c
        :pswitch_36
        :pswitch_52
        :pswitch_5f
        :pswitch_7b
    .end packed-switch
.end method

.method public a(Lt/L;)Z
    .registers 4

    iget v0, p1, Lt/L;->a:I

    iget v1, p0, Lt/au;->e:I

    add-int/2addr v0, v1

    const v1, 0x3fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lt/au;->f:I

    if-lt v0, v1, :cond_23

    iget v1, p0, Lt/au;->g:I

    if-gt v0, v1, :cond_23

    iget v0, p1, Lt/L;->b:I

    iget-object v1, p0, Lt/au;->c:Lt/L;

    iget v1, v1, Lt/L;->b:I

    if-lt v0, v1, :cond_23

    iget v0, p1, Lt/L;->b:I

    iget-object v1, p0, Lt/au;->d:Lt/L;

    iget v1, v1, Lt/L;->b:I

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public a(Lt/W;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x2000

    const/high16 v6, -0x2000

    const/high16 v5, 0x4000

    iget-boolean v0, p0, Lt/au;->a:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lt/au;->b:Lt/V;

    invoke-virtual {v0, p1}, Lt/V;->b(Lt/W;)Z

    move-result v1

    :cond_12
    :goto_12
    return v1

    :cond_13
    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v0

    iget-object v3, p0, Lt/au;->c:Lt/L;

    iget v3, v3, Lt/L;->b:I

    iget-object v4, v0, Lt/V;->a:Lt/L;

    iget v4, v4, Lt/L;->b:I

    if-gt v3, v4, :cond_2b

    iget-object v3, p0, Lt/au;->d:Lt/L;

    iget v3, v3, Lt/L;->b:I

    iget-object v4, v0, Lt/V;->b:Lt/L;

    iget v4, v4, Lt/L;->b:I

    if-ge v3, v4, :cond_2d

    :cond_2b
    move v1, v2

    goto :goto_12

    :cond_2d
    iget-object v3, v0, Lt/V;->a:Lt/L;

    iget v3, v3, Lt/L;->a:I

    iget-object v0, v0, Lt/V;->b:Lt/L;

    iget v0, v0, Lt/L;->a:I

    iget-object v4, p0, Lt/au;->c:Lt/L;

    iget v4, v4, Lt/L;->a:I

    if-gt v4, v3, :cond_3d

    if-gt v7, v0, :cond_12

    :cond_3d
    if-gt v6, v3, :cond_45

    iget-object v4, p0, Lt/au;->d:Lt/L;

    iget v4, v4, Lt/L;->a:I

    if-ge v4, v0, :cond_12

    :cond_45
    if-ge v3, v6, :cond_5a

    add-int/2addr v3, v5

    :cond_48
    :goto_48
    if-ge v0, v6, :cond_5e

    add-int/2addr v0, v5

    :cond_4b
    :goto_4b
    iget-object v4, p0, Lt/au;->c:Lt/L;

    iget v4, v4, Lt/L;->a:I

    if-gt v4, v3, :cond_62

    iget-object v3, p0, Lt/au;->d:Lt/L;

    iget v3, v3, Lt/L;->a:I

    if-lt v3, v0, :cond_62

    move v0, v1

    :goto_58
    move v1, v0

    goto :goto_12

    :cond_5a
    if-lt v3, v7, :cond_48

    sub-int/2addr v3, v5

    goto :goto_48

    :cond_5e
    if-lt v0, v7, :cond_4b

    sub-int/2addr v0, v5

    goto :goto_4b

    :cond_62
    move v0, v2

    goto :goto_58
.end method

.method public b()Lt/L;
    .registers 3

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iget-object v1, p0, Lt/au;->b:Lt/V;

    invoke-virtual {v1}, Lt/V;->f()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v0}, Lt/L;->i(Lt/L;)V

    return-object v0
.end method

.method public b(Lt/W;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lt/au;->a:Z

    if-nez v1, :cond_c

    iget-object v0, p0, Lt/au;->b:Lt/V;

    invoke-virtual {v0, p1}, Lt/V;->a(Lt/W;)Z

    move-result v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    instance-of v1, p1, Lt/V;

    if-eqz v1, :cond_4c

    check-cast p1, Lt/V;

    iget-object v1, p0, Lt/au;->c:Lt/L;

    iget v1, v1, Lt/L;->b:I

    iget-object v2, p1, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->b:I

    if-gt v1, v2, :cond_b

    iget-object v1, p0, Lt/au;->d:Lt/L;

    iget v1, v1, Lt/L;->b:I

    iget-object v2, p1, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->b:I

    if-lt v1, v2, :cond_b

    iget-object v1, p0, Lt/au;->c:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p1, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->a:I

    if-gt v1, v2, :cond_38

    const/high16 v1, 0x2000

    iget-object v2, p1, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->a:I

    if-gt v1, v2, :cond_4a

    :cond_38
    const/high16 v1, -0x2000

    iget-object v2, p1, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->a:I

    if-gt v1, v2, :cond_b

    iget-object v1, p0, Lt/au;->d:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p1, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->a:I

    if-lt v1, v2, :cond_b

    :cond_4a
    const/4 v0, 0x1

    goto :goto_b

    :cond_4c
    invoke-super {p0, p1}, Lt/av;->b(Lt/W;)Z

    move-result v0

    goto :goto_b
.end method

.method public c()Lt/W;
    .registers 2

    iget-object v0, p0, Lt/au;->b:Lt/V;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lt/au;->b:Lt/V;

    invoke-virtual {v0}, Lt/V;->g()I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 3

    iget-object v0, p0, Lt/au;->d:Lt/L;

    iget v0, v0, Lt/L;->b:I

    iget-object v1, p0, Lt/au;->c:Lt/L;

    iget v1, v1, Lt/L;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f()Lt/L;
    .registers 2

    iget-object v0, p0, Lt/au;->c:Lt/L;

    return-object v0
.end method

.method public g()Lt/L;
    .registers 2

    iget-object v0, p0, Lt/au;->d:Lt/L;

    return-object v0
.end method

.method public h()I
    .registers 2

    iget-boolean v0, p0, Lt/au;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x4

    goto :goto_5
.end method
