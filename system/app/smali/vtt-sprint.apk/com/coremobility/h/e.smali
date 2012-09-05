.class public final Lcom/coremobility/h/e;
.super Lcom/coremobility/j/k;


# instance fields
.field final synthetic a:Lcom/coremobility/h/a;


# direct methods
.method public constructor <init>(Lcom/coremobility/h/a;)V
    .registers 13

    const/4 v10, 0x7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/coremobility/h/e;->a:Lcom/coremobility/h/a;

    invoke-direct {p0}, Lcom/coremobility/j/k;-><init>()V

    new-array v0, v10, [Lcom/coremobility/j/i;

    iput-object v0, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    move v2, v1

    :goto_c
    if-ge v2, v10, :cond_50

    const/4 v0, 0x6

    new-array v3, v0, [I

    mul-int/lit8 v4, v2, 0x6

    move v0, v1

    :goto_14
    const/4 v5, 0x3

    if-ge v0, v5, :cond_43

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    mul-int/lit8 v6, v0, 0x2

    iget-object v7, p1, Lcom/coremobility/h/a;->b:Lcom/coremobility/integration/a/a;

    add-int/lit16 v8, v5, 0x1810

    iget-object v9, p0, Lcom/coremobility/h/e;->b:[I

    aget v9, v9, v5

    invoke-virtual {v7, v8, v1, v9}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v7

    aput v7, v3, v6

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p1, Lcom/coremobility/h/a;->b:Lcom/coremobility/integration/a/a;

    add-int/lit8 v8, v5, 0x1

    add-int/lit16 v8, v8, 0x1810

    iget-object v9, p0, Lcom/coremobility/h/e;->b:[I

    add-int/lit8 v5, v5, 0x1

    aget v5, v9, v5

    invoke-virtual {v7, v8, v1, v5}, Lcom/coremobility/integration/a/a;->a(III)I

    move-result v5

    aput v5, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_43
    iget-object v0, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    new-instance v4, Lcom/coremobility/j/i;

    invoke-direct {v4, v3}, Lcom/coremobility/j/i;-><init>([I)V

    aput-object v4, v0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_50
    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/coremobility/j/h;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    array-length v0, v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0, p1}, Lcom/coremobility/j/k;->a(I)Lcom/coremobility/j/h;

    move-result-object v0

    if-nez v0, :cond_c

    packed-switch p1, :pswitch_data_30

    :pswitch_16
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_c

    :pswitch_1a
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    aget-object v1, v1, v3

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_c

    :pswitch_24
    new-instance v0, Lcom/coremobility/j/h;

    iget-object v1, p0, Lcom/coremobility/h/e;->c:[Lcom/coremobility/j/i;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, p1, v1, v3}, Lcom/coremobility/j/h;-><init>(ILcom/coremobility/j/i;Z)V

    goto :goto_c

    nop

    :pswitch_data_30
    .packed-switch 0x4b3
        :pswitch_1a
        :pswitch_16
        :pswitch_24
    .end packed-switch
.end method

.method public final a(Lcom/coremobility/j/h;I)Lcom/coremobility/j/h;
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p1, :cond_41

    iget v0, p1, Lcom/coremobility/j/h;->b:I

    invoke-static {v0}, Lcom/coremobility/h/e;->b(I)I

    move-result v0

    :goto_d
    invoke-static {p2}, Lcom/coremobility/h/e;->b(I)I

    move-result v2

    if-nez v0, :cond_56

    if-nez v2, :cond_56

    if-eqz p1, :cond_19

    iget v1, p1, Lcom/coremobility/j/h;->b:I

    :cond_19
    move v0, p2

    move v2, v1

    :goto_1b
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/coremobility/j/h;->d()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3a

    if-eq v2, v0, :cond_2d

    invoke-virtual {p1}, Lcom/coremobility/j/h;->d()I

    move-result v0

    if-eqz v0, :cond_3a

    :cond_2d
    instance-of v0, p1, Lcom/coremobility/h/d;

    if-eqz v0, :cond_43

    move-object v0, p1

    check-cast v0, Lcom/coremobility/h/d;

    invoke-static {v0}, Lcom/coremobility/h/d;->a(Lcom/coremobility/h/d;)I

    move-result v0

    if-eqz v0, :cond_43

    :cond_3a
    if-eqz p2, :cond_54

    invoke-virtual {p0, p2}, Lcom/coremobility/h/e;->a(I)Lcom/coremobility/j/h;

    move-result-object p1

    :cond_40
    :goto_40
    return-object p1

    :cond_41
    move v0, v1

    goto :goto_d

    :cond_43
    instance-of v0, p1, Lcom/coremobility/h/d;

    if-eqz v0, :cond_50

    move-object v0, p1

    check-cast v0, Lcom/coremobility/h/d;

    invoke-static {v0}, Lcom/coremobility/h/d;->a(Lcom/coremobility/h/d;)I

    move-result v0

    if-nez v0, :cond_40

    :cond_50
    invoke-virtual {p1, p2}, Lcom/coremobility/j/h;->a(I)V

    goto :goto_40

    :cond_54
    move-object p1, v1

    goto :goto_40

    :cond_56
    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1b
.end method
