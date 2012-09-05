.class public LK/bq;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LK/bq;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Ljava/util/List;)LK/bp;
    .registers 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    new-instance v1, LK/cl;

    invoke-direct {v1, v0}, LK/cl;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_19
    return-object v0

    :pswitch_1a
    invoke-static {}, LK/bp;->e()LK/bp;

    move-result-object v0

    goto :goto_19

    :pswitch_1f
    new-instance v1, LK/cz;

    invoke-static {p0}, LK/bF;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, LK/cz;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_19

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public a()LK/bp;
    .registers 2

    iget-object v0, p0, LK/bq;->a:Ljava/util/ArrayList;

    invoke-static {v0}, LK/bq;->a(Ljava/util/List;)LK/bp;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;
    .registers 5

    iget-object v0, p0, LK/bq;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, LK/bp;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
