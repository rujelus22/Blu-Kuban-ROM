.class public Lax/aQ;
.super Lat/a;


# instance fields
.field private final a:I

.field private final b:Ljava/util/Vector;

.field private final c:Lax/aR;


# direct methods
.method private constructor <init>(ILjava/util/Vector;Lax/aR;)V
    .registers 4

    invoke-direct {p0}, Lat/a;-><init>()V

    iput p1, p0, Lax/aQ;->a:I

    iput-object p2, p0, Lax/aQ;->b:Ljava/util/Vector;

    iput-object p3, p0, Lax/aQ;->c:Lax/aR;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Lax/aR;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lax/aQ;-><init>(ILjava/util/Vector;Lax/aR;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x30

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 15

    new-instance v3, Lam/b;

    sget-object v0, LbD/bx;->H:Lam/e;

    invoke-direct {v3, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->d(I)I

    move-result v4

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->c(I)I

    move-result v5

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->d(I)I

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->c(I)I

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->d(I)I

    move-result v6

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->c(I)I

    move-result v7

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->d(I)I

    move-result v8

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->c(I)I

    move-result v9

    const/4 v1, 0x0

    iget v0, p0, Lax/aQ;->a:I

    move v2, v1

    move v1, v0

    :goto_52
    const/4 v0, 0x5

    if-ge v2, v0, :cond_bf

    iget-object v0, p0, Lax/aQ;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_bf

    iget-object v0, p0, Lax/aQ;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/o;

    invoke-virtual {v0}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v0, Lam/b;

    sget-object v12, LbD/bx;->G:Lam/e;

    invoke-direct {v0, v12}, Lam/b;-><init>(Lam/e;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Lam/b;->b(IJ)V

    const/4 v12, 0x2

    invoke-virtual {v0, v12, v4}, Lam/b;->h(II)V

    const/4 v12, 0x3

    invoke-virtual {v0, v12, v5}, Lam/b;->h(II)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v0}, Lam/b;->a(ILam/b;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->W()Z

    move-result v0

    if-eqz v0, :cond_90

    :goto_8a
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_52

    :cond_90
    new-instance v0, Lam/b;

    sget-object v12, LbD/bx;->G:Lam/e;

    invoke-direct {v0, v12}, Lam/b;-><init>(Lam/e;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Lam/b;->b(IJ)V

    const/4 v12, 0x2

    invoke-virtual {v0, v12, v6}, Lam/b;->h(II)V

    const/4 v12, 0x3

    invoke-virtual {v0, v12, v7}, Lam/b;->h(II)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12, v0}, Lam/b;->a(ILam/b;)V

    new-instance v0, Lam/b;

    sget-object v12, LbD/bx;->G:Lam/e;

    invoke-direct {v0, v12}, Lam/b;-><init>(Lam/e;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12, v10, v11}, Lam/b;->b(IJ)V

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v8}, Lam/b;->h(II)V

    const/4 v10, 0x3

    invoke-virtual {v0, v10, v9}, Lam/b;->h(II)V

    const/4 v10, 0x1

    invoke-virtual {v3, v10, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_8a

    :cond_bf
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v3, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x3

    const/4 v2, 0x1

    sget-object v1, LbD/bx;->I:Lam/e;

    invoke-static {v1, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v6

    invoke-static {v6, v2, v5}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v4

    invoke-static {v4, v2, v5}, Lam/g;->c(Lam/b;II)I

    move-result v4

    packed-switch v1, :pswitch_data_76

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/login/g;->a(I)V

    :cond_21
    :goto_21
    return v2

    :pswitch_22
    invoke-virtual {v6, v3}, Lam/b;->l(I)I

    move-result v7

    invoke-static {}, Lcom/google/googlenav/ui/bw;->W()Z

    move-result v1

    if-eqz v1, :cond_4e

    move v1, v2

    :goto_2d
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move v4, v0

    move v5, v0

    :goto_34
    if-ge v5, v7, :cond_50

    iget-object v0, p0, Lax/aQ;->b:Ljava/util/Vector;

    iget v9, p0, Lax/aQ;->a:I

    add-int/2addr v9, v4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/o;

    const/4 v9, 0x4

    invoke-static {v0, v5, v6, v3, v9}, Lay/n;->a(Lay/o;ILam/b;II)Lay/n;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/2addr v5, v1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_34

    :cond_4e
    move v1, v3

    goto :goto_2d

    :cond_50
    iget-object v0, p0, Lax/aQ;->c:Lax/aR;

    invoke-interface {v0, v8}, Lax/aR;->a(Ljava/util/Vector;)V

    iget v0, p0, Lax/aQ;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lax/aQ;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    new-instance v1, Lax/aQ;

    iget v3, p0, Lax/aQ;->a:I

    add-int/lit8 v3, v3, 0x5

    iget-object v4, p0, Lax/aQ;->b:Ljava/util/Vector;

    iget-object v5, p0, Lax/aQ;->c:Lax/aR;

    invoke-direct {v1, v3, v4, v5}, Lax/aQ;-><init>(ILjava/util/Vector;Lax/aR;)V

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    goto :goto_21

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method
