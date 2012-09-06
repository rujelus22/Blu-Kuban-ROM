.class public Lcom/google/common/collect/dm;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/dm;->a:Ljava/util/ArrayList;

    .line 171
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableMap;
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/common/collect/dm;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v0}, Lcom/google/common/collect/RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_1b
    return-object v0

    :pswitch_1c
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_1b

    :pswitch_21
    new-instance v1, Lcom/google/common/collect/SingletonImmutableMap;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ee;->d(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lcom/google/common/collect/SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_1b

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_21
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/common/collect/dm;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method
