.class public Lcom/google/gmm/debug/f;
.super LZ/a;


# static fields
.field private static b:Lcom/google/gmm/debug/f;


# instance fields
.field private c:Ljava/util/Hashtable;

.field private d:Lcom/google/gmm/debug/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, LZ/a;-><init>()V

    const-class v0, Lcom/google/gmm/debug/f;

    invoke-static {v0}, Lcom/google/gmm/debug/c;->a(Ljava/lang/Class;)Lcom/google/gmm/debug/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gmm/debug/f;->d:Lcom/google/gmm/debug/c;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/gmm/debug/f;->c:Ljava/util/Hashtable;

    return-void
.end method

.method public static a()Lcom/google/gmm/debug/f;
    .registers 1

    sget-object v0, Lcom/google/gmm/debug/f;->b:Lcom/google/gmm/debug/f;

    if-nez v0, :cond_f

    sget-object v0, Lcom/google/gmm/debug/f;->b:Lcom/google/gmm/debug/f;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/gmm/debug/f;

    invoke-direct {v0}, Lcom/google/gmm/debug/f;-><init>()V

    sput-object v0, Lcom/google/gmm/debug/f;->b:Lcom/google/gmm/debug/f;

    :cond_f
    sget-object v0, Lcom/google/gmm/debug/f;->b:Lcom/google/gmm/debug/f;

    return-object v0
.end method

.method private a([I)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v0, p1, v6

    if-nez v0, :cond_9

    const-string v0, "NA"

    :goto_8
    return-object v0

    :cond_9
    aget v3, p1, v5

    aget v2, p1, v5

    aget v1, p1, v5

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget v0, p1, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    :goto_1f
    aget v5, p1, v6

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_41

    aget v5, p1, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v5, p1, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v5, p1, v0

    add-int/2addr v1, v5

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget v0, p1, v6

    div-int v0, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/google/gmm/debug/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_46

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v1

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_1d

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_b

    :cond_19
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_b

    :cond_1d
    instance-of v2, v0, [I

    if-eqz v2, :cond_3a

    check-cast v0, [I

    check-cast v0, [I

    if-nez v0, :cond_29

    move-object v0, v1

    goto :goto_b

    :cond_29
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_35
    invoke-direct {p0, v0}, Lcom/google/gmm/debug/f;->a([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_3a
    instance-of v1, v0, LY/b;

    if-eqz v1, :cond_41

    const-string v0, "Run"

    goto :goto_b

    :cond_41
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_46

    move-result-object v0

    goto :goto_b

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/gmm/debug/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/gmm/debug/f;->i()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/gmm/debug/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
