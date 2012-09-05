.class public final Lcom/google/android/youtube/core/model/proto/e;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/youtube/core/model/proto/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1468
    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/model/proto/e;)Lcom/google/android/youtube/core/model/proto/b;
    .registers 3
    .parameter

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/b;->i()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/e;->a(Lcom/google/protobuf/j;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build() has already been called on this Builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_38
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_51

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_51
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v0}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v0, v1, :cond_6a

    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_6a
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    return-object v0
.end method

.method static synthetic a()Lcom/google/android/youtube/core/model/proto/e;
    .registers 1

    .prologue
    .line 1462
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/e;->d()Lcom/google/android/youtube/core/model/proto/e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/e;
    .registers 4
    .parameter

    .prologue
    .line 1668
    if-nez p1, :cond_8

    .line 1669
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1671
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;Z)Z

    .line 1672
    iget-object v0, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Ljava/lang/String;)Ljava/lang/String;

    .line 1673
    return-object p0
.end method

.method private c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/e;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1577
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/d;->a()I

    move-result v0

    .line 1578
    sparse-switch v0, :sswitch_data_e2

    .line 1582
    invoke-virtual {p1, v0}, Lcom/google/protobuf/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1583
    :sswitch_d
    return-object p0

    .line 1588
    :sswitch_e
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/c;->i()Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v0

    .line 1589
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/b;->b()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1590
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/b;->c()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/proto/d;->a(Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/d;

    .line 1592
    :cond_23
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/k;Lcom/google/protobuf/e;)V

    .line 1593
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/d;->a()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_32
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Z)Z

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/c;

    goto :goto_0

    .line 1597
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/model/proto/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/e;

    goto :goto_0

    .line 1601
    :sswitch_46
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/f;->g()Lcom/google/android/youtube/core/model/proto/g;

    move-result-object v0

    .line 1602
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/k;Lcom/google/protobuf/e;)V

    .line 1603
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/g;->a()Lcom/google/android/youtube/core/model/proto/f;

    move-result-object v0

    if-nez v0, :cond_59

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_59
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_6f
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1607
    :sswitch_79
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/n;->v()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    .line 1608
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/k;Lcom/google/protobuf/e;)V

    .line 1609
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/o;->a()Lcom/google/android/youtube/core/model/proto/n;

    move-result-object v0

    if-nez v0, :cond_8c

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8c
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_a2
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1613
    :sswitch_ad
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/n;->v()Lcom/google/android/youtube/core/model/proto/o;

    move-result-object v0

    .line 1614
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/d;->a(Lcom/google/protobuf/k;Lcom/google/protobuf/e;)V

    .line 1615
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/proto/o;->a()Lcom/google/android/youtube/core/model/proto/n;

    move-result-object v0

    if-nez v0, :cond_c0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_c0
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d6

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_d6
    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1578
    nop

    :sswitch_data_e2
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_3e
        0x1a -> :sswitch_46
        0x22 -> :sswitch_79
        0x2a -> :sswitch_ad
    .end sparse-switch
.end method

.method private static d()Lcom/google/android/youtube/core/model/proto/e;
    .registers 2

    .prologue
    .line 1471
    new-instance v0, Lcom/google/android/youtube/core/model/proto/e;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/proto/e;-><init>()V

    .line 1472
    new-instance v1, Lcom/google/android/youtube/core/model/proto/b;

    invoke-direct {v1}, Lcom/google/android/youtube/core/model/proto/b;-><init>()V

    iput-object v1, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    .line 1473
    return-object v0
.end method

.method private e()Lcom/google/android/youtube/core/model/proto/e;
    .registers 6

    .prologue
    .line 1492
    invoke-static {}, Lcom/google/android/youtube/core/model/proto/e;->d()Lcom/google/android/youtube/core/model/proto/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/b;->a()Lcom/google/android/youtube/core/model/proto/b;

    move-result-object v2

    if-eq v1, v2, :cond_db

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/b;->b()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/b;->c()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/proto/b;->b()Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object v3, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v3}, Lcom/google/android/youtube/core/model/proto/b;->d(Lcom/google/android/youtube/core/model/proto/b;)Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v3

    invoke-static {}, Lcom/google/android/youtube/core/model/proto/c;->a()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v4

    if-eq v3, v4, :cond_dc

    iget-object v3, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    iget-object v4, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v4}, Lcom/google/android/youtube/core/model/proto/b;->d(Lcom/google/android/youtube/core/model/proto/b;)Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/model/proto/c;->a(Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/youtube/core/model/proto/d;->a(Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/proto/d;->a()Lcom/google/android/youtube/core/model/proto/c;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/c;

    :goto_41
    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Z)Z

    :cond_47
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/b;->d()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/proto/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/youtube/core/model/proto/e;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/proto/e;

    :cond_54
    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_81

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_74

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_74
    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_81
    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ae

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a1

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_a1
    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->b(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_ae
    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_db

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;Ljava/util/List;)Ljava/util/List;

    :cond_ce
    iget-object v2, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v2}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/youtube/core/model/proto/b;->c(Lcom/google/android/youtube/core/model/proto/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_db
    return-object v0

    :cond_dc
    iget-object v3, v0, Lcom/google/android/youtube/core/model/proto/e;->a:Lcom/google/android/youtube/core/model/proto/b;

    invoke-static {v3, v2}, Lcom/google/android/youtube/core/model/proto/b;->a(Lcom/google/android/youtube/core/model/proto/b;Lcom/google/android/youtube/core/model/proto/c;)Lcom/google/android/youtube/core/model/proto/c;

    goto/16 :goto_41
.end method


# virtual methods
.method public final synthetic a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1462
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/e;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b()Lcom/google/protobuf/g;
    .registers 2

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/e;->e()Lcom/google/android/youtube/core/model/proto/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1462
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/model/proto/e;->c(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/android/youtube/core/model/proto/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/b;
    .registers 2

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/e;->e()Lcom/google/android/youtube/core/model/proto/e;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/proto/e;->e()Lcom/google/android/youtube/core/model/proto/e;

    move-result-object v0

    return-object v0
.end method
