.class final Lcom/google/android/youtube/core/async/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/i;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/youtube/core/async/l;

.field private final d:Ljava/util/List;

.field private final e:[Landroid/graphics/Bitmap;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/i;Ljava/util/List;Lcom/google/android/youtube/core/async/l;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/google/android/youtube/core/async/j;->b:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/google/android/youtube/core/async/j;->c:Lcom/google/android/youtube/core/async/l;

    .line 56
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 58
    iget-object v2, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1}, Lcom/google/android/youtube/core/async/i;->a(Lcom/google/android/youtube/core/async/i;)Lcom/google/android/youtube/core/async/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/async/k;->a()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 59
    iget-object v2, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 62
    :cond_38
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/j;->e:[Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

.method private declared-synchronized a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->e:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput-object p2, v0, v1

    .line 74
    iget v0, p0, Lcom/google/android/youtube/core/async/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/async/j;->f:I

    .line 75
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/j;->c()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 76
    monitor-exit p0

    return-void

    .line 73
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/core/async/j;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/async/j;->f:I

    .line 82
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/j;->c()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 83
    monitor-exit p0

    return-void

    .line 81
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .registers 6

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/youtube/core/async/j;->f:I

    iget-object v1, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 88
    :try_start_a
    iget-object v1, p0, Lcom/google/android/youtube/core/async/j;->e:[Landroid/graphics/Bitmap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_1f

    aget-object v4, v1, v0

    if-eqz v4, :cond_1c

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 89
    :cond_1f
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->c:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/j;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/i;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/i;->a(Lcom/google/android/youtube/core/async/i;)Lcom/google/android/youtube/core/async/k;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/youtube/core/async/k;->a(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_30} :catch_31

    .line 94
    :cond_30
    :goto_30
    return-void

    .line 90
    :catch_31
    move-exception v0

    .line 91
    iget-object v1, p0, Lcom/google/android/youtube/core/async/j;->c:Lcom/google/android/youtube/core/async/l;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/j;->b:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_30
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 4

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/j;->c()V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/async/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 68
    iget-object v2, p0, Lcom/google/android/youtube/core/async/j;->a:Lcom/google/android/youtube/core/async/i;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/i;->b(Lcom/google/android/youtube/core/async/i;)Lcom/google/android/youtube/core/b/ag;

    move-result-object v2

    invoke-interface {v2, v0, p0}, Lcom/google/android/youtube/core/b/ag;->b(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_20

    goto :goto_a

    .line 66
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_23
    monitor-exit p0

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/j;->b()V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/async/j;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
