.class public final Lcom/google/android/youtube/core/model/proto/m;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/core/model/proto/l;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2629
    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/m;)Lcom/google/android/youtube/core/model/proto/l;
    .registers 3
    .parameter

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/l;->c()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/m;->a(Lcom/google/protobuf/j;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;Ljava/util/List;)Ljava/util/List;

    :cond_38
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    return-object v0
.end method

.method static synthetic a()Lcom/google/android/youtube/core/model/proto/m;
    .registers 1

    .prologue
    .line 2623
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/m;->d()Lcom/google/android/youtube/core/model/proto/m;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/m;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->a()I

    move-result v0

    .line 2713
    sparse-switch v0, :sswitch_data_42

    .line 2717
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2718
    :sswitch_d
    return-object p0

    .line 2723
    :sswitch_e
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/n;->v()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    .line 2724
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/k;Lcom/google/protobuf/e;)V

    .line 2725
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/o;->a()Lcom/google/android/youtube/core/model/proto/n;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_21
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;Ljava/util/List;)Ljava/util/List;

    :cond_37
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2713
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method private static d()Lcom/google/android/youtube/core/model/proto/m;
    .registers 3

    .prologue
    .line 2632
    new-instance v0, Lcom/google/android/youtube/core/model/proto/m;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/m;-><init>()V

    .line 2633
    new-instance v1, Lcom/google/android/youtube/core/model/proto/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/model/proto/l;-><init>(C)V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    .line 2634
    return-object v0
.end method

.method private e()Lcom/google/android/youtube/core/model/proto/m;
    .registers 5

    .prologue
    .line 2653
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/m;->d()Lcom/google/android/youtube/core/model/proto/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/l;->a()Lcom/google/android/youtube/core/model/proto/l;

    move-result-object v2

    if-eq v1, v2, :cond_39

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;Ljava/util/List;)Ljava/util/List;

    :cond_2c
    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/m;->a:Lcom/google/android/youtube/core/model/proto/l;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/l;->a(Lcom/google/android/youtube/core/model/proto/l;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_39
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2623
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/m;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/protobuf/g;
    .registers 2

    .prologue
    .line 2623
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/m;->e()Lcom/google/android/youtube/core/model/proto/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2623
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/m;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/b;
    .registers 2

    .prologue
    .line 2623
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/m;->e()Lcom/google/android/youtube/core/model/proto/m;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2623
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/m;->e()Lcom/google/android/youtube/core/model/proto/m;

    move-result-object v0

    return-object v0
.end method
