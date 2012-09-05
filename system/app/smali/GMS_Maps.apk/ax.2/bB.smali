.class public Lax/bB;
.super Lat/a;


# instance fields
.field private a:Z

.field private final b:Laf/h;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;

.field private e:Laf/h;

.field private f:Laf/h;

.field private g:Laf/h;

.field private h:Laf/h;

.field private i:Laf/h;


# direct methods
.method public constructor <init>(Laf/h;Ljava/util/Vector;Ljava/util/Vector;Laf/h;Laf/h;Laf/h;Laf/h;Laf/h;)V
    .registers 9

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lax/bB;->b:Laf/h;

    iput-object p2, p0, Lax/bB;->c:Ljava/util/Vector;

    iput-object p3, p0, Lax/bB;->d:Ljava/util/Vector;

    iput-object p4, p0, Lax/bB;->e:Laf/h;

    iput-object p5, p0, Lax/bB;->f:Laf/h;

    iput-object p6, p0, Lax/bB;->g:Laf/h;

    iput-object p7, p0, Lax/bB;->h:Laf/h;

    iput-object p8, p0, Lax/bB;->i:Laf/h;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x2f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v3, Lam/b;

    sget-object v0, LbD/bx;->k:Lam/e;

    invoke-direct {v3, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lax/bB;->b:Laf/h;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lax/bB;->b:Laf/h;

    invoke-virtual {v0}, Laf/h;->b()I

    move-result v2

    move v0, v1

    :goto_13
    if-ge v0, v2, :cond_22

    const/4 v4, 0x1

    iget-object v5, p0, Lax/bB;->b:Laf/h;

    invoke-virtual {v5, v0}, Laf/h;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    iget-object v0, p0, Lax/bB;->c:Ljava/util/Vector;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lax/bB;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v1

    :goto_2d
    if-ge v2, v4, :cond_3f

    const/4 v5, 0x2

    iget-object v0, p0, Lax/bB;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lam/b;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    :cond_3f
    iget-object v0, p0, Lax/bB;->d:Ljava/util/Vector;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lax/bB;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    move v2, v1

    :goto_4a
    if-ge v2, v4, :cond_5c

    const/4 v5, 0x3

    iget-object v0, p0, Lax/bB;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lam/b;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4a

    :cond_5c
    iget-object v0, p0, Lax/bB;->e:Laf/h;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lax/bB;->e:Laf/h;

    invoke-virtual {v0}, Laf/h;->b()I

    move-result v2

    move v0, v1

    :goto_67
    if-ge v0, v2, :cond_76

    const/4 v4, 0x4

    iget-object v5, p0, Lax/bB;->e:Laf/h;

    invoke-virtual {v5, v0}, Laf/h;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_76
    iget-object v0, p0, Lax/bB;->f:Laf/h;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lax/bB;->f:Laf/h;

    invoke-virtual {v0}, Laf/h;->b()I

    move-result v2

    move v0, v1

    :goto_81
    if-ge v0, v2, :cond_90

    const/4 v4, 0x5

    iget-object v5, p0, Lax/bB;->f:Laf/h;

    invoke-virtual {v5, v0}, Laf/h;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    :cond_90
    iget-object v0, p0, Lax/bB;->g:Laf/h;

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lax/bB;->g:Laf/h;

    invoke-virtual {v0}, Laf/h;->b()I

    move-result v2

    move v0, v1

    :goto_9b
    if-ge v0, v2, :cond_aa

    const/4 v4, 0x6

    iget-object v5, p0, Lax/bB;->g:Laf/h;

    invoke-virtual {v5, v0}, Laf/h;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9b

    :cond_aa
    iget-object v0, p0, Lax/bB;->h:Laf/h;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lax/bB;->h:Laf/h;

    invoke-virtual {v0}, Laf/h;->b()I

    move-result v2

    move v0, v1

    :goto_b5
    if-ge v0, v2, :cond_c4

    const/4 v4, 0x7

    iget-object v5, p0, Lax/bB;->h:Laf/h;

    invoke-virtual {v5, v0}, Laf/h;->a(I)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_c4
    iget-object v0, p0, Lax/bB;->i:Laf/h;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lax/bB;->i:Laf/h;

    invoke-virtual {v0}, Laf/h;->b()I

    move-result v2

    move v0, v1

    :goto_cf
    if-ge v0, v2, :cond_df

    const/16 v1, 0x8

    iget-object v4, p0, Lax/bB;->i:Laf/h;

    invoke-virtual {v4, v0}, Laf/h;->a(I)J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_cf

    :cond_df
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v3, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/bx;->l:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iput-boolean v5, p0, Lax/bB;->a:Z

    packed-switch v1, :pswitch_data_2e

    :goto_1b
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_22
    return v3

    :pswitch_23
    iput-boolean v3, p0, Lax/bB;->a:Z

    invoke-virtual {p0, v3}, Lax/bB;->a(Z)V

    goto :goto_22

    :pswitch_29
    invoke-virtual {p0, v5}, Lax/bB;->a(Z)V

    goto :goto_1b

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_29
    .end packed-switch
.end method
