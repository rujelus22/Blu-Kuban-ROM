.class public Lax/aq;
.super Lat/b;


# instance fields
.field protected a:Lam/b;

.field protected b:Z

.field private c:Ljava/util/List;

.field private final d:Z

.field private e:Lax/aC;


# direct methods
.method public constructor <init>(ILax/aE;Lcom/google/googlenav/android/ac;Z)V
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, LK/bn;->a(Ljava/lang/Object;)LK/bn;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lax/aq;-><init>(Ljava/util/List;Lax/aE;Lcom/google/googlenav/android/ac;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lax/aC;Z)V
    .registers 4

    invoke-direct {p0}, Lat/b;-><init>()V

    iput-object p1, p0, Lax/aq;->c:Ljava/util/List;

    iput-object p2, p0, Lax/aq;->e:Lax/aC;

    iput-boolean p3, p0, Lax/aq;->d:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lax/aE;Lcom/google/googlenav/android/ac;Z)V
    .registers 6

    new-instance v0, Lax/aC;

    invoke-direct {v0, p3, p2}, Lax/aC;-><init>(Lcom/google/googlenav/android/ac;Lax/aE;)V

    invoke-direct {p0, p1, v0, p4}, Lax/aq;-><init>(Ljava/util/List;Lax/aC;Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x47

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    new-instance v1, Lam/b;

    sget-object v0, LbD/dT;->h:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lax/aq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lam/b;->a(II)V

    goto :goto_d

    :cond_22
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, LbD/dT;->i:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lax/aq;->a:Lam/b;

    iget-object v0, p0, Lax/aq;->a:Lam/b;

    invoke-static {v0, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v0

    iget-object v1, p0, Lax/aq;->a:Lam/b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lam/g;->c(Lam/b;II)I

    move-result v1

    packed-switch v0, :pswitch_data_2c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/aq;->b:Z

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/g;->a(I)V

    :goto_28
    return v3

    :pswitch_29
    iput-boolean v3, p0, Lax/aq;->b:Z

    goto :goto_28

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method public b()V
    .registers 3

    invoke-super {p0}, Lat/b;->b()V

    iget-boolean v0, p0, Lax/aq;->b:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lax/aq;->e:Lax/aC;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lax/aq;->e:Lax/aC;

    iget-object v1, p0, Lax/aq;->a:Lam/b;

    invoke-virtual {v0, v1}, Lax/aC;->a(Lam/b;)V

    :cond_12
    return-void
.end method

.method protected synthetic k()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lax/aq;->l()Lax/ar;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lax/ar;
    .registers 4

    new-instance v0, Lax/ar;

    iget-boolean v1, p0, Lax/aq;->b:Z

    iget-object v2, p0, Lax/aq;->a:Lam/b;

    invoke-direct {v0, v1, v2}, Lax/ar;-><init>(ZLam/b;)V

    return-object v0
.end method

.method public l_()Z
    .registers 2

    iget-boolean v0, p0, Lax/aq;->d:Z

    return v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
