.class public Lcom/google/common/collect/by;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/google/common/collect/bx;
    .registers 3
    .parameter

    .prologue
    .line 212
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 213
    packed-switch v0, :pswitch_data_2c

    .line 219
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 221
    new-instance v1, Lcom/google/common/collect/db;

    invoke-direct {v1, v0}, Lcom/google/common/collect/db;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_19
    return-object v0

    .line 215
    :pswitch_1a
    invoke-static {}, Lcom/google/common/collect/bx;->h()Lcom/google/common/collect/bx;

    move-result-object v0

    goto :goto_19

    .line 217
    :pswitch_1f
    new-instance v1, Lcom/google/common/collect/dq;

    invoke-static {p0}, Lcom/google/common/collect/bT;->c(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lcom/google/common/collect/dq;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_19

    .line 213
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/google/common/collect/bx;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/by;->a(Ljava/util/List;)Lcom/google/common/collect/bx;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/common/collect/by;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/common/collect/bx;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method
