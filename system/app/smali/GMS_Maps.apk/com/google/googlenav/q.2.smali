.class public Lcom/google/googlenav/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lam/b;


# direct methods
.method private constructor <init>(Lam/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/q;->a:Lam/b;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/google/googlenav/q;
    .registers 11

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    new-instance v1, Lam/b;

    sget-object v0, LbF/G;->x:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/aL;

    sget-object v3, Lcom/google/googlenav/p;->a:[I

    invoke-virtual {v0}, Lax/aL;->c()Lax/aN;

    move-result-object v4

    invoke-virtual {v4}, Lax/aN;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_86

    goto :goto_f

    :pswitch_2b
    new-instance v3, Lam/b;

    sget-object v4, LbF/G;->w:Lam/e;

    invoke-direct {v3, v4}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v3, v6, v6}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lax/aL;->a()J

    move-result-wide v4

    invoke-virtual {v3, v9, v4, v5}, Lam/b;->b(IJ)V

    invoke-virtual {v0}, Lax/aL;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v6, v3}, Lam/b;->a(ILam/b;)V

    goto :goto_f

    :pswitch_47
    new-instance v3, Lam/b;

    sget-object v4, LbF/G;->w:Lam/e;

    invoke-direct {v3, v4}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v3, v6, v9}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lax/aL;->a()J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Lam/b;->b(IJ)V

    invoke-virtual {v0}, Lax/aL;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v6, v3}, Lam/b;->a(ILam/b;)V

    goto :goto_f

    :pswitch_63
    new-instance v3, Lam/b;

    sget-object v4, LbF/G;->w:Lam/e;

    invoke-direct {v3, v4}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v3, v6, v7}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lax/aL;->a()J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Lam/b;->b(IJ)V

    invoke-virtual {v0}, Lax/aL;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v1, v6, v3}, Lam/b;->a(ILam/b;)V

    goto :goto_f

    :cond_7f
    new-instance v0, Lcom/google/googlenav/q;

    invoke-direct {v0, v1}, Lcom/google/googlenav/q;-><init>(Lam/b;)V

    return-object v0

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_47
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public a()Lam/b;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/q;->a:Lam/b;

    return-object v0
.end method
