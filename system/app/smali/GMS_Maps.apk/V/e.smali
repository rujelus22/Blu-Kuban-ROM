.class public abstract Lv/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/LinkedList;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lv/e;->c:Ljava/util/LinkedList;

    .line 39
    iput p1, p0, Lv/e;->a:I

    .line 40
    iput-object p2, p0, Lv/e;->b:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 7
    .parameter

    .prologue
    .line 44
    iget-object v1, p0, Lv/e;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 45
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 46
    iget-object v3, p0, Lv/e;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lv/e;->a:I

    if-ne v3, v4, :cond_20

    .line 50
    iget-object v3, p0, Lv/e;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 52
    :cond_20
    iget-object v3, p0, Lv/e;->c:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 54
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    .line 55
    return-void
.end method

.method protected abstract b()Ljava/lang/Object;
.end method

.method public c()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 60
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 61
    iget v0, p0, Lv/e;->d:I

    iget v1, p0, Lv/e;->e:I

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x3ff

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_11

    .line 66
    :cond_11
    iget-object v1, p0, Lv/e;->c:Ljava/util/LinkedList;

    monitor-enter v1

    .line 67
    :try_start_14
    iget-object v0, p0, Lv/e;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 68
    iget-object v0, p0, Lv/e;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 70
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_32

    .line 72
    iget v2, p0, Lv/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lv/e;->e:I

    .line 73
    monitor-exit v1

    .line 79
    :goto_31
    return-object v0

    .line 77
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_3e

    .line 78
    iget v0, p0, Lv/e;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv/e;->d:I

    .line 79
    invoke-virtual {p0}, Lv/e;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_31

    .line 77
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method
