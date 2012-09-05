.class public LaJ/R;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(LaJ/U;I)I
    .registers 3

    invoke-virtual {p0, p1}, LaJ/U;->c(I)I

    move-result v0

    packed-switch v0, :pswitch_data_18

    const v0, 0x60d1d1d1

    :goto_a
    return v0

    :pswitch_b
    const/high16 v0, -0x64

    goto :goto_a

    :pswitch_e
    const/high16 v0, -0x67

    goto :goto_a

    :pswitch_11
    const/16 v0, -0x2000

    goto :goto_a

    :pswitch_14
    const v0, -0xcc4f00

    goto :goto_a

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private a([LaJ/U;LaJ/T;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_2b

    invoke-interface {p2}, LaJ/T;->a()LaJ/S;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {p0, v4, v5, v1, v1}, LaJ/R;->a(LaJ/S;LaJ/U;IZ)V

    invoke-virtual {v5}, LaJ/U;->a()I

    move-result v6

    move v2, v3

    :goto_14
    if-ge v2, v6, :cond_1c

    invoke-virtual {p0, v4, v5, v2, v3}, LaJ/R;->a(LaJ/S;LaJ/U;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1c
    const v2, -0x2f000001

    invoke-virtual {v5}, LaJ/U;->c()I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    invoke-interface {p2, v4, v2, v5}, LaJ/T;->a(LaJ/S;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2b
    return-void
.end method

.method private b([LaJ/U;LaJ/T;)V
    .registers 13

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_3f

    aget-object v7, p1, v0

    invoke-virtual {p0, p2, v7, v1}, LaJ/R;->a(LaJ/T;LaJ/U;I)LaJ/S;

    move-result-object v4

    invoke-static {v7, v1}, LaJ/R;->a(LaJ/U;I)I

    move-result v3

    invoke-virtual {v7}, LaJ/U;->a()I

    move-result v8

    move v5, v6

    :goto_15
    if-ge v5, v8, :cond_33

    invoke-virtual {p0, v4, v7, v5, v6}, LaJ/R;->a(LaJ/S;LaJ/U;IZ)V

    invoke-static {v7, v5}, LaJ/R;->a(LaJ/U;I)I

    move-result v2

    if-eq v2, v3, :cond_40

    invoke-virtual {v7}, LaJ/U;->b()I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-interface {p2, v4, v3, v9}, LaJ/T;->a(LaJ/S;II)V

    invoke-virtual {p0, p2, v7, v5}, LaJ/R;->a(LaJ/T;LaJ/U;I)LaJ/S;

    move-result-object v3

    :goto_2d
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move v3, v2

    goto :goto_15

    :cond_33
    invoke-virtual {v7}, LaJ/U;->b()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    invoke-interface {p2, v4, v3, v2}, LaJ/T;->a(LaJ/S;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3f
    return-void

    :cond_40
    move v2, v3

    move-object v3, v4

    goto :goto_2d
.end method


# virtual methods
.method protected a(LaJ/T;LaJ/U;I)LaJ/S;
    .registers 6

    invoke-interface {p1}, LaJ/T;->a()LaJ/S;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, LaJ/R;->a(LaJ/S;LaJ/U;IZ)V

    return-object v0
.end method

.method protected a(LaJ/S;LaJ/U;IZ)V
    .registers 7

    invoke-virtual {p2, p3}, LaJ/U;->a(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p2, p3}, LaJ/U;->b(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    if-eqz p4, :cond_12

    invoke-interface {p1, v0, v1}, LaJ/S;->a(II)V

    :goto_11
    return-void

    :cond_12
    invoke-interface {p1, v0, v1}, LaJ/S;->b(II)V

    goto :goto_11
.end method

.method public a(LaJ/X;LaJ/T;)V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, LaJ/X;->a(J)V

    invoke-virtual {p1}, LaJ/X;->c()[LaJ/U;

    move-result-object v0

    invoke-direct {p0, v0, p2}, LaJ/R;->a([LaJ/U;LaJ/T;)V

    invoke-virtual {p1}, LaJ/X;->c()[LaJ/U;

    move-result-object v0

    invoke-direct {p0, v0, p2}, LaJ/R;->b([LaJ/U;LaJ/T;)V

    return-void
.end method
