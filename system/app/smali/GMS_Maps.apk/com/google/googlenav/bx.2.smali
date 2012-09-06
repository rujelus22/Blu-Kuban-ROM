.class public Lcom/google/googlenav/bX;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:LaM/bG;

.field private b:Lcom/google/googlenav/bO;

.field private c:Lcom/google/googlenav/bV;

.field private d:Z


# direct methods
.method public constructor <init>(LaM/bG;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 891
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 892
    iput-object p1, p0, Lcom/google/googlenav/bX;->a:LaM/bG;

    .line 893
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 897
    const/16 v0, 0x7f

    return v0
.end method

.method public a(Lcom/google/googlenav/bV;)V
    .registers 2
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/google/googlenav/bX;->c:Lcom/google/googlenav/bV;

    .line 968
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 902
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hz;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 903
    iget-object v0, p0, Lcom/google/googlenav/bX;->a:LaM/bG;

    invoke-virtual {v0}, LaM/bG;->a()Lcom/google/googlenav/cn;

    move-result-object v3

    .line 904
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 905
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->g()Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-virtual {v2, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 907
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v5

    move v0, v1

    .line 909
    :goto_22
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->d()I

    move-result v6

    if-ge v0, v6, :cond_41

    .line 910
    invoke-virtual {v3, v0}, Lcom/google/googlenav/cn;->a(I)Lcom/google/googlenav/cp;

    move-result-object v6

    .line 911
    invoke-virtual {v6}, Lcom/google/googlenav/cp;->f()Ljava/lang/String;

    move-result-object v6

    .line 912
    if-eqz v6, :cond_3e

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 913
    invoke-virtual {v2, v8, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 914
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 918
    :cond_41
    invoke-virtual {v3}, Lcom/google/googlenav/cn;->b()[Lcom/google/googlenav/ca;

    move-result-object v0

    array-length v4, v0

    :goto_46
    if-ge v1, v4, :cond_54

    aget-object v6, v0, v1

    .line 919
    invoke-virtual {v6}, Lcom/google/googlenav/ca;->h()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 922
    :cond_54
    const/4 v0, 0x2

    invoke-virtual {v3}, Lcom/google/googlenav/cn;->e()Lcom/google/googlenav/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ca;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 924
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 925
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_64

    .line 928
    :cond_75
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 929
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    .line 933
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hz;->l:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 936
    new-instance v1, Lcom/google/googlenav/bO;

    iget-object v2, p0, Lcom/google/googlenav/bX;->a:LaM/bG;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/bO;-><init>(LaM/bG;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v1, p0, Lcom/google/googlenav/bX;->b:Lcom/google/googlenav/bO;

    .line 937
    const/4 v0, 0x1

    return v0
.end method

.method public i()Lcom/google/googlenav/bO;
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/google/googlenav/bX;->b:Lcom/google/googlenav/bO;

    return-object v0
.end method

.method public declared-synchronized i_()Z
    .registers 2

    .prologue
    .line 947
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/bX;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()V
    .registers 3

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/googlenav/bX;->c:Lcom/google/googlenav/bV;

    if-eqz v0, :cond_b

    .line 959
    iget-object v0, p0, Lcom/google/googlenav/bX;->c:Lcom/google/googlenav/bV;

    iget-object v1, p0, Lcom/google/googlenav/bX;->a:LaM/bG;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bV;->a(LaM/bG;)V

    .line 961
    :cond_b
    return-void
.end method

.method public declared-synchronized l_()V
    .registers 2

    .prologue
    .line 942
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/bX;->d:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 943
    monitor-exit p0

    return-void

    .line 942
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
