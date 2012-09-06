.class public Lap;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


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
    iput p1, p0, Lap;->b:I

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lap;->a:Ljava/util/LinkedHashMap;

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
    iget v0, p0, Lap;->a:I

    if-ltz v0, :cond_11

    iget-object v0, p0, Lap;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, Lap;->a:I

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
    iget v0, p0, Lap;->a:I

    if-le v0, p1, :cond_41

    iget-object v0, p0, Lap;->a:Ljava/util/LinkedHashMap;

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
    iget-object v0, p0, Lap;->a:Ljava/util/LinkedHashMap;

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
    iget-object v2, p0, Lap;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget v2, p0, Lap;->a:I

    invoke-direct {p0, v1, v0}, Lap;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lap;->a:I

    .line 161
    iget v2, p0, Lap;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lap;->d:I

    .line 162
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_35 .. :try_end_70} :catchall_32

    .line 164
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Lap;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p0, p1, p2}, Lap;->a(Ljava/lang/Object;Ljava/lang/Object;)I

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
.method protected a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

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
    iget-object v0, p0, Lap;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1c

    .line 182
    iget v1, p0, Lap;->a:I

    invoke-direct {p0, p1, v0}, Lap;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lap;->a:I

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

    invoke-virtual {p0, v1, p1, v0, v2}, Lap;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

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
    iget v0, p0, Lap;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lap;->c:I

    .line 123
    iget v0, p0, Lap;->a:I

    invoke-direct {p0, p1, p2}, Lap;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lap;->a:I

    .line 124
    iget-object v0, p0, Lap;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2d

    .line 126
    iget v1, p0, Lap;->a:I

    invoke-direct {p0, p1, v0}, Lap;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lap;->a:I

    .line 128
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3a

    .line 130
    if-eqz v0, :cond_34

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lap;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :cond_34
    iget v1, p0, Lap;->b:I

    invoke-direct {p0, v1}, Lap;->a(I)V

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

.method protected a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 318
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lap;->e:I

    iget v2, p0, Lap;->f:I

    add-int/2addr v1, v2

    .line 319
    if-eqz v1, :cond_e

    iget v0, p0, Lap;->e:I

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 320
    :cond_e
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lap;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lap;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lap;->f:I

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
