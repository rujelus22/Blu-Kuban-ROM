.class public final Lt/V;
.super Lt/W;


# instance fields
.field protected a:Lt/L;

.field protected b:Lt/L;

.field private volatile c:Lt/L;

.field private volatile d:Lt/L;


# direct methods
.method public constructor <init>(Lt/L;Lt/L;)V
    .registers 3

    invoke-direct {p0}, Lt/W;-><init>()V

    iput-object p1, p0, Lt/V;->a:Lt/L;

    iput-object p2, p0, Lt/V;->b:Lt/L;

    return-void
.end method

.method public static a(Lt/L;I)Lt/V;
    .registers 6

    new-instance v0, Lt/L;

    iget v1, p0, Lt/L;->a:I

    sub-int/2addr v1, p1

    iget v2, p0, Lt/L;->b:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    new-instance v1, Lt/L;

    iget v2, p0, Lt/L;->a:I

    add-int/2addr v2, p1

    iget v3, p0, Lt/L;->b:I

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lt/L;-><init>(II)V

    new-instance v2, Lt/V;

    invoke-direct {v2, v0, v1}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v2
.end method

.method public static a(Lt/L;Lt/L;)Lt/V;
    .registers 8

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    if-ge v0, v1, :cond_24

    iget v1, p0, Lt/L;->a:I

    iget v0, p1, Lt/L;->a:I

    :goto_a
    iget v2, p0, Lt/L;->b:I

    iget v3, p1, Lt/L;->b:I

    if-ge v2, v3, :cond_29

    iget v3, p0, Lt/L;->b:I

    iget v2, p1, Lt/L;->b:I

    :goto_14
    new-instance v4, Lt/V;

    new-instance v5, Lt/L;

    invoke-direct {v5, v1, v3}, Lt/L;-><init>(II)V

    new-instance v1, Lt/L;

    invoke-direct {v1, v0, v2}, Lt/L;-><init>(II)V

    invoke-direct {v4, v5, v1}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v4

    :cond_24
    iget v1, p1, Lt/L;->a:I

    iget v0, p0, Lt/L;->a:I

    goto :goto_a

    :cond_29
    iget v3, p1, Lt/L;->b:I

    iget v2, p0, Lt/L;->b:I

    goto :goto_14
.end method

.method public static a(Lt/P;)Lt/V;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt/P;->a(I)Lt/L;

    move-result-object v5

    iget v2, v5, Lt/L;->a:I

    iget v1, v5, Lt/L;->b:I

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_d
    invoke-virtual {p0}, Lt/P;->b()I

    move-result v6

    if-ge v0, v6, :cond_31

    invoke-virtual {p0, v0, v5}, Lt/P;->a(ILt/L;)V

    iget v6, v5, Lt/L;->a:I

    if-ge v6, v4, :cond_1c

    iget v4, v5, Lt/L;->a:I

    :cond_1c
    iget v6, v5, Lt/L;->a:I

    if-le v6, v3, :cond_22

    iget v3, v5, Lt/L;->a:I

    :cond_22
    iget v6, v5, Lt/L;->b:I

    if-ge v6, v2, :cond_28

    iget v2, v5, Lt/L;->b:I

    :cond_28
    iget v6, v5, Lt/L;->b:I

    if-le v6, v1, :cond_2e

    iget v1, v5, Lt/L;->b:I

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_31
    invoke-virtual {v5, v4, v2}, Lt/L;->d(II)V

    new-instance v0, Lt/L;

    invoke-direct {v0, v3, v1}, Lt/L;-><init>(II)V

    new-instance v1, Lt/V;

    invoke-direct {v1, v5, v0}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v1
.end method

.method public static a([Lt/L;)Lt/V;
    .registers 8

    const/4 v0, 0x0

    aget-object v0, p0, v0

    iget v2, v0, Lt/L;->a:I

    iget v1, v0, Lt/L;->b:I

    const/4 v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_b
    array-length v5, p0

    if-ge v0, v5, :cond_2b

    aget-object v5, p0, v0

    iget v6, v5, Lt/L;->a:I

    if-ge v6, v4, :cond_16

    iget v4, v5, Lt/L;->a:I

    :cond_16
    iget v6, v5, Lt/L;->a:I

    if-le v6, v3, :cond_1c

    iget v3, v5, Lt/L;->a:I

    :cond_1c
    iget v6, v5, Lt/L;->b:I

    if-ge v6, v2, :cond_22

    iget v2, v5, Lt/L;->b:I

    :cond_22
    iget v6, v5, Lt/L;->b:I

    if-le v6, v1, :cond_28

    iget v1, v5, Lt/L;->b:I

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2b
    new-instance v0, Lt/V;

    new-instance v5, Lt/L;

    invoke-direct {v5, v4, v2}, Lt/L;-><init>(II)V

    new-instance v2, Lt/L;

    invoke-direct {v2, v3, v1}, Lt/L;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lt/V;-><init>(Lt/L;Lt/L;)V

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
    iget-object v0, p0, Lt/V;->c:Lt/L;

    if-nez v0, :cond_1c

    new-instance v0, Lt/L;

    iget-object v1, p0, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p0, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->b:I

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lt/V;->c:Lt/L;

    :cond_1c
    iget-object v0, p0, Lt/V;->c:Lt/L;

    :goto_1e
    return-object v0

    :pswitch_1f
    iget-object v0, p0, Lt/V;->b:Lt/L;

    goto :goto_1e

    :pswitch_22
    iget-object v0, p0, Lt/V;->d:Lt/L;

    if-nez v0, :cond_35

    new-instance v0, Lt/L;

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p0, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->b:I

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lt/V;->d:Lt/L;

    :cond_35
    iget-object v0, p0, Lt/V;->d:Lt/L;

    goto :goto_1e

    :pswitch_38
    iget-object v0, p0, Lt/V;->a:Lt/L;

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

.method public a()Lt/V;
    .registers 1

    return-object p0
.end method

.method public a(Lt/V;)Lt/V;
    .registers 7

    new-instance v0, Lt/L;

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p1, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->b:I

    iget-object v3, p1, Lt/V;->a:Lt/L;

    iget v3, v3, Lt/L;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    new-instance v1, Lt/L;

    iget-object v2, p0, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->a:I

    iget-object v3, p1, Lt/V;->b:Lt/L;

    iget v3, v3, Lt/L;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lt/V;->b:Lt/L;

    iget v3, v3, Lt/L;->b:I

    iget-object v4, p1, Lt/V;->b:Lt/L;

    iget v4, v4, Lt/L;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lt/L;-><init>(II)V

    new-instance v2, Lt/V;

    invoke-direct {v2, v0, v1}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v2
.end method

.method public a(Lt/L;)Z
    .registers 4

    iget v0, p1, Lt/L;->a:I

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->a:I

    if-lt v0, v1, :cond_22

    iget v0, p1, Lt/L;->a:I

    iget-object v1, p0, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->a:I

    if-gt v0, v1, :cond_22

    iget v0, p1, Lt/L;->b:I

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->b:I

    if-lt v0, v1, :cond_22

    iget v0, p1, Lt/L;->b:I

    iget-object v1, p0, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->b:I

    if-gt v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public a(Lt/W;)Z
    .registers 4

    instance-of v0, p1, Lt/V;

    if-eqz v0, :cond_32

    check-cast p1, Lt/V;

    iget-object v0, p0, Lt/V;->a:Lt/L;

    iget v0, v0, Lt/L;->a:I

    iget-object v1, p1, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->a:I

    if-gt v0, v1, :cond_30

    iget-object v0, p0, Lt/V;->a:Lt/L;

    iget v0, v0, Lt/L;->b:I

    iget-object v1, p1, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->b:I

    if-gt v0, v1, :cond_30

    iget-object v0, p0, Lt/V;->b:Lt/L;

    iget v0, v0, Lt/L;->a:I

    iget-object v1, p1, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->a:I

    if-lt v0, v1, :cond_30

    iget-object v0, p0, Lt/V;->b:Lt/L;

    iget v0, v0, Lt/L;->b:I

    iget-object v1, p1, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->b:I

    if-lt v0, v1, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f

    :cond_32
    invoke-super {p0, p1}, Lt/W;->a(Lt/W;)Z

    move-result v0

    goto :goto_2f
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public b(I)Lt/V;
    .registers 7

    if-gez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lt/V;

    new-instance v1, Lt/L;

    iget-object v2, p0, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->a:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Lt/V;->a:Lt/L;

    iget v3, v3, Lt/L;->b:I

    sub-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Lt/L;-><init>(II)V

    new-instance v2, Lt/L;

    iget-object v3, p0, Lt/V;->b:Lt/L;

    iget v3, v3, Lt/L;->a:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lt/V;->b:Lt/L;

    iget v4, v4, Lt/L;->b:I

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, Lt/L;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v0
.end method

.method b(Lt/V;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lt/V;->a:Lt/L;

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p1, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lt/L;->a:I

    iget-object v0, p0, Lt/V;->a:Lt/L;

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->b:I

    iget-object v2, p1, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lt/L;->b:I

    iget-object v0, p0, Lt/V;->b:Lt/L;

    iget-object v1, p0, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p1, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lt/L;->a:I

    iget-object v0, p0, Lt/V;->b:Lt/L;

    iget-object v1, p0, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->b:I

    iget-object v2, p1, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lt/L;->b:I

    iput-object v3, p0, Lt/V;->c:Lt/L;

    iput-object v3, p0, Lt/V;->d:Lt/L;

    return-void
.end method

.method public b(Lt/W;)Z
    .registers 5

    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v0

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, v0, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->a:I

    if-gt v1, v2, :cond_2e

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->b:I

    iget-object v2, v0, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->b:I

    if-gt v1, v2, :cond_2e

    iget-object v1, p0, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, v0, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->a:I

    if-lt v1, v2, :cond_2e

    iget-object v1, p0, Lt/V;->b:Lt/L;

    iget v1, v1, Lt/L;->b:I

    iget-object v0, v0, Lt/V;->b:Lt/L;

    iget v0, v0, Lt/L;->b:I

    if-lt v1, v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public c()Lt/L;
    .registers 2

    iget-object v0, p0, Lt/V;->a:Lt/L;

    return-object v0
.end method

.method public c(Lt/V;)Lt/V;
    .registers 7

    new-instance v1, Lt/L;

    iget-object v0, p0, Lt/V;->a:Lt/L;

    iget v0, v0, Lt/L;->a:I

    iget-object v2, p1, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->b:I

    iget-object v3, p1, Lt/V;->a:Lt/L;

    iget v3, v3, Lt/L;->b:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lt/L;-><init>(II)V

    new-instance v2, Lt/L;

    iget-object v0, p0, Lt/V;->b:Lt/L;

    iget v0, v0, Lt/L;->a:I

    iget-object v3, p1, Lt/V;->b:Lt/L;

    iget v3, v3, Lt/L;->a:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lt/V;->b:Lt/L;

    iget v3, v3, Lt/L;->b:I

    iget-object v4, p1, Lt/V;->b:Lt/L;

    iget v4, v4, Lt/L;->b:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v2, v0, v3}, Lt/L;-><init>(II)V

    iget v0, v1, Lt/L;->a:I

    iget v3, v2, Lt/L;->a:I

    if-gt v0, v3, :cond_46

    iget v0, v1, Lt/L;->b:I

    iget v3, v2, Lt/L;->b:I

    if-le v0, v3, :cond_48

    :cond_46
    const/4 v0, 0x0

    :goto_47
    return-object v0

    :cond_48
    new-instance v0, Lt/V;

    invoke-direct {v0, v1, v2}, Lt/V;-><init>(Lt/L;Lt/L;)V

    goto :goto_47
.end method

.method public d()Lt/L;
    .registers 2

    iget-object v0, p0, Lt/V;->a:Lt/L;

    return-object v0
.end method

.method public e()Lt/L;
    .registers 2

    iget-object v0, p0, Lt/V;->b:Lt/L;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lt/V;

    if-eqz v2, :cond_21

    check-cast p1, Lt/V;

    iget-object v2, p1, Lt/V;->b:Lt/L;

    iget-object v3, p0, Lt/V;->b:Lt/L;

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p1, Lt/V;->a:Lt/L;

    iget-object v3, p0, Lt/V;->a:Lt/L;

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public f()Lt/L;
    .registers 5

    new-instance v0, Lt/L;

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->a:I

    iget-object v2, p0, Lt/V;->b:Lt/L;

    iget v2, v2, Lt/L;->a:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lt/V;->a:Lt/L;

    iget v2, v2, Lt/L;->b:I

    iget-object v3, p0, Lt/V;->b:Lt/L;

    iget v3, v3, Lt/L;->b:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    return-object v0
.end method

.method public g()I
    .registers 3

    iget-object v0, p0, Lt/V;->b:Lt/L;

    iget v0, v0, Lt/L;->a:I

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public h()I
    .registers 3

    iget-object v0, p0, Lt/V;->b:Lt/L;

    iget v0, v0, Lt/L;->b:I

    iget-object v1, p0, Lt/V;->a:Lt/L;

    iget v1, v1, Lt/L;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lt/V;->b:Lt/L;

    invoke-virtual {v0}, Lt/L;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt/V;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/V;->a:Lt/L;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/V;->b:Lt/L;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
