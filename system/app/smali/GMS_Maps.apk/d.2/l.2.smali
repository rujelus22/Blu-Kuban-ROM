.class Ld/l;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Ld/h;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private volatile d:Ljava/lang/String;

.field private final e:Ljava/util/List;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ld/h;Ljava/util/List;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Ld/l;->a:Ld/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ld/ax;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ld/l;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/l;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/l;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld/l;->h:Ljava/util/Map;

    iput-object p2, p0, Ld/l;->b:Ljava/util/List;

    iput-object p3, p0, Ld/l;->d:Ljava/lang/String;

    invoke-static {}, Ld/ax;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ld/l;->c:Ljava/util/List;

    const/4 v0, 0x0

    :goto_37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    iget-object v1, p0, Ld/l;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_46
    return-void
.end method

.method static synthetic a(Ld/l;Ljava/lang/String;)Ld/aw;
    .registers 3

    invoke-direct {p0, p1}, Ld/l;->c(Ljava/lang/String;)Ld/aw;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(IZ)V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Ld/l;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Need to call corresponding addGLocRequest before calling this."

    invoke-static {v0, v1}, Ld/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ld/l;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v4, p0, Ld/l;->g:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v1, :cond_28

    if-eqz v0, :cond_57

    :cond_28
    move v4, v2

    :goto_29
    const-string v5, "Need to call corresponding addGLocRequest before calling this."

    invoke-static {v4, v5}, Ld/ax;->b(ZLjava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_59

    move v4, v2

    :goto_39
    const-string v5, "Inconsistent state."

    invoke-static {v4, v5}, Ld/ax;->b(ZLjava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_5b

    move v1, v2

    :goto_49
    const-string v2, "Need to call corresponding addGLocRequest before calling this."

    invoke-static {v1, v2}, Ld/ax;->b(ZLjava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_5d

    monitor-exit p0

    return-void

    :cond_57
    move v4, v3

    goto :goto_29

    :cond_59
    move v4, v3

    goto :goto_39

    :cond_5b
    move v1, v3

    goto :goto_49

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ld/l;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ld/l;->a(IZ)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)Ld/aw;
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v2, Ld/aw;

    invoke-direct {v2}, Ld/aw;-><init>()V

    iget-object v0, p0, Ld/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_22

    const/4 v0, 0x1

    :goto_10
    const-string v4, "File not found."

    invoke-static {v0, v4}, Ld/ax;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Ld/l;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_43

    if-nez v0, :cond_24

    move-object v0, v1

    :goto_20
    monitor-exit p0

    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_10

    :cond_24
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget v0, v2, Ld/aw;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Ld/aw;->a:I

    :goto_30
    iget-object v0, p0, Ld/l;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_46

    move-object v0, v2

    goto :goto_20

    :cond_3c
    iget v0, v2, Ld/aw;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Ld/aw;->b:I
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_43

    goto :goto_30

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_46
    :try_start_46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_5a

    move-object v0, v1

    goto :goto_20

    :cond_5a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_67

    iget v0, v2, Ld/aw;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Ld/aw;->c:I

    goto :goto_4a

    :cond_67
    iget v0, v2, Ld/aw;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Ld/aw;->d:I
    :try_end_6d
    .catchall {:try_start_46 .. :try_end_6d} :catchall_43

    goto :goto_4a

    :cond_6e
    move-object v0, v2

    goto :goto_20
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld/l;->a:Ld/h;

    invoke-static {v1}, Ld/h;->c(Ld/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1a

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :goto_2
    :try_start_2
    iget-object v1, p0, Ld/l;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Ld/l;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Ld/l;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_21

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/l;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)V
    .registers 10

    const/4 v3, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Ld/l;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Ld/l;->f:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ld/l;->g:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v0, p0, Ld/l;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Ld/l;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v5

    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_77

    move v2, v3

    :goto_47
    move v4, v2

    goto :goto_34

    :cond_49
    if-nez v4, :cond_56

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    iget-object v0, p0, Ld/l;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    :goto_62
    const-string v0, "Duplicated seqNum (the same seqNum exists in more than one file)!"

    invoke-static {v3, v0}, Ld/ax;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Ld/l;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_74

    monitor-exit p0

    return-void

    :cond_72
    move v3, v5

    goto :goto_62

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_77
    move v2, v4

    goto :goto_47
.end method

.method public declared-synchronized a(Ljava/lang/String;Z)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2b

    const/4 v0, 0x1

    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in upload list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ld/ax;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Ld/l;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2d

    monitor-exit p0

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_a

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Ld/l;->b:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ld/l;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/l;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized c(I)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ld/l;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seqNum #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not exist. addGLocRequest need to be called before this."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/ax;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ld/aw;
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v1, Ld/aw;

    invoke-direct {v1}, Ld/aw;-><init>()V

    iget-object v0, p0, Ld/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ld/l;->c(Ljava/lang/String;)Ld/aw;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    move-result-object v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    :goto_1f
    monitor-exit p0

    return-object v0

    :cond_21
    :try_start_21
    invoke-virtual {v1, v0}, Ld/aw;->a(Ld/aw;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_c

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_28
    move-object v0, v1

    goto :goto_1f
.end method

.method public declared-synchronized e()Ljava/util/List;
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ld/ax;->a()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v0, p0, Ld/l;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Ld/l;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_54

    :cond_4e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2f

    :cond_52
    monitor-exit p0

    return-object v4

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method
