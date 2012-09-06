.class public Ldbxyzptlk/c/c;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Ljava/util/LinkedHashMap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-gtz p1, :cond_d

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_d
    iput p1, p0, Ldbxyzptlk/c/c;->c:I

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    .line 53
    return-void
.end method

.method private a(I)V
    .registers 6
    .parameter

    .prologue
    .line 146
    :goto_0
    monitor-enter p0

    .line 147
    :try_start_1
    iget v0, p0, Ldbxyzptlk/c/c;->b:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, Ldbxyzptlk/c/c;->b:I

    if-eqz v0, :cond_35

    .line 148
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    throw v0

    .line 152
    :cond_35
    :try_start_35
    iget v0, p0, Ldbxyzptlk/c/c;->b:I

    if-le v0, p1, :cond_41

    iget-object v0, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 153
    :cond_41
    monitor-exit p0

    .line 166
    return-void

    .line 156
    :cond_43
    iget-object v0, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 159
    iget-object v2, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget v2, p0, Ldbxyzptlk/c/c;->b:I

    invoke-direct {p0, v1, v0}, Ldbxyzptlk/c/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Ldbxyzptlk/c/c;->b:I

    .line 161
    iget v2, p0, Ldbxyzptlk/c/c;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ldbxyzptlk/c/c;->f:I

    .line 162
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_35 .. :try_end_70} :catchall_32

    .line 164
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Ldbxyzptlk/c/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 231
    if-gez v0, :cond_29

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_29
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 62
    if-nez p1, :cond_a

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_a
    monitor-enter p0

    .line 68
    :try_start_b
    iget-object v0, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1b

    .line 70
    iget v1, p0, Ldbxyzptlk/c/c;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldbxyzptlk/c/c;->g:I

    .line 71
    monitor-exit p0

    .line 105
    :goto_1a
    return-object v0

    .line 73
    :cond_1b
    iget v0, p0, Ldbxyzptlk/c/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldbxyzptlk/c/c;->h:I

    .line 74
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2a

    .line 83
    invoke-virtual {p0, p1}, Ldbxyzptlk/c/c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 84
    if-nez v1, :cond_2d

    .line 85
    const/4 v0, 0x0

    goto :goto_1a

    .line 74
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 88
    :cond_2d
    monitor-enter p0

    .line 89
    :try_start_2e
    iget v0, p0, Ldbxyzptlk/c/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldbxyzptlk/c/c;->e:I

    .line 90
    iget-object v0, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_49

    .line 94
    iget-object v2, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_53

    .line 100
    if-eqz v0, :cond_56

    .line 101
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Ldbxyzptlk/c/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    .line 96
    :cond_49
    :try_start_49
    iget v2, p0, Ldbxyzptlk/c/c;->b:I

    invoke-direct {p0, p1, v1}, Ldbxyzptlk/c/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ldbxyzptlk/c/c;->b:I

    goto :goto_41

    .line 98
    :catchall_53
    move-exception v0

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_53

    throw v0

    .line 104
    :cond_56
    iget v0, p0, Ldbxyzptlk/c/c;->c:I

    invoke-direct {p0, v0}, Ldbxyzptlk/c/c;->a(I)V

    move-object v0, v1

    .line 105
    goto :goto_1a
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 116
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_c
    monitor-enter p0

    .line 122
    :try_start_d
    iget v0, p0, Ldbxyzptlk/c/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldbxyzptlk/c/c;->d:I

    .line 123
    iget v0, p0, Ldbxyzptlk/c/c;->b:I

    invoke-direct {p0, p1, p2}, Ldbxyzptlk/c/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ldbxyzptlk/c/c;->b:I

    .line 124
    iget-object v0, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2d

    .line 126
    iget v1, p0, Ldbxyzptlk/c/c;->b:I

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/c/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Ldbxyzptlk/c/c;->b:I

    .line 128
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3a

    .line 130
    if-eqz v0, :cond_34

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Ldbxyzptlk/c/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :cond_34
    iget v1, p0, Ldbxyzptlk/c/c;->c:I

    invoke-direct {p0, v1}, Ldbxyzptlk/c/c;->a(I)V

    .line 135
    return-object v0

    .line 128
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 252
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Ldbxyzptlk/c/c;->a(I)V

    .line 253
    return-void
.end method

.method protected a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    return-void
.end method

.method protected b(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 174
    if-nez p1, :cond_a

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_a
    monitor-enter p0

    .line 180
    :try_start_b
    iget-object v0, p0, Ldbxyzptlk/c/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1c

    .line 182
    iget v1, p0, Ldbxyzptlk/c/c;->b:I

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/c/c;->c(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Ldbxyzptlk/c/c;->b:I

    .line 184
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_25

    .line 186
    if-eqz v0, :cond_24

    .line 187
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Ldbxyzptlk/c/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    :cond_24
    return-object v0

    .line 184
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method protected final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 318
    monitor-enter p0

    :try_start_2
    iget v1, p0, Ldbxyzptlk/c/c;->g:I

    iget v2, p0, Ldbxyzptlk/c/c;->h:I

    add-int/2addr v1, v2

    .line 319
    if-eqz v1, :cond_e

    iget v0, p0, Ldbxyzptlk/c/c;->g:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 320
    :cond_e
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Ldbxyzptlk/c/c;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Ldbxyzptlk/c/c;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Ldbxyzptlk/c/c;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3b

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 318
    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
