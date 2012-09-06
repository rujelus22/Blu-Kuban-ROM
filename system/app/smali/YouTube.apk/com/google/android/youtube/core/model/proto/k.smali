.class public final Lcom/google/android/youtube/core/model/proto/k;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/core/model/proto/j;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2307
    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method

.method private c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/k;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2393
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->a()I

    move-result v0

    .line 2394
    sparse-switch v0, :sswitch_data_42

    .line 2398
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2399
    :sswitch_d
    return-object p0

    .line 2404
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/proto/k;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/k;

    goto :goto_0

    .line 2408
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_22
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;Ljava/util/List;)Ljava/util/List;

    :cond_38
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2394
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
    .end sparse-switch
.end method

.method static synthetic d()Lcom/google/android/youtube/core/model/proto/k;
    .registers 1

    .prologue
    .line 2301
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/k;->e()Lcom/google/android/youtube/core/model/proto/k;

    move-result-object v0

    return-object v0
.end method

.method private static e()Lcom/google/android/youtube/core/model/proto/k;
    .registers 3

    .prologue
    .line 2310
    new-instance v0, Lcom/google/android/youtube/core/model/proto/k;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/k;-><init>()V

    .line 2311
    new-instance v1, Lcom/google/android/youtube/core/model/proto/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/j;-><init>(C)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    .line 2312
    return-object v0
.end method

.method private f()Lcom/google/android/youtube/core/model/proto/k;
    .registers 5

    .prologue
    .line 2331
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/k;->e()Lcom/google/android/youtube/core/model/proto/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/j;->a()Lcom/google/android/youtube/core/model/proto/j;

    move-result-object v2

    if-eq v1, v2, :cond_46

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/j;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/proto/k;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/k;

    :cond_19
    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;Ljava/util/List;)Ljava/util/List;

    :cond_39
    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_46
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/proto/j;
    .registers 3

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/j;->d()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2344
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/k;->a(Lcom/google/protobuf/j;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2346
    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;Ljava/util/List;)Ljava/util/List;

    :cond_38
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/android/youtube/core/model/proto/k;
    .registers 4
    .parameter

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2467
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;Ljava/util/List;)Ljava/util/List;

    .line 2469
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/g;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2470
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/k;
    .registers 4
    .parameter

    .prologue
    .line 2424
    if-nez p1, :cond_8

    .line 2425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2427
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;Z)Z

    .line 2428
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/k;->a:Lcom/google/android/youtube/core/model/proto/j;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/j;->a(Lcom/google/android/youtube/core/model/proto/j;Ljava/lang/String;)Ljava/lang/String;

    .line 2429
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2301
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/k;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/protobuf/g;
    .registers 2

    .prologue
    .line 2301
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/k;->f()Lcom/google/android/youtube/core/model/proto/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2301
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/k;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/b;
    .registers 2

    .prologue
    .line 2301
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/k;->f()Lcom/google/android/youtube/core/model/proto/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2301
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/k;->f()Lcom/google/android/youtube/core/model/proto/k;

    move-result-object v0

    return-object v0
.end method
