.class public Lcom/estrongs/android/pop/app/imageviewer/gallery/g;
.super Ljava/lang/Object;


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
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/h",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->c:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/LruCache$1;

    const/16 v2, 0x10

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/LruCache$1;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/g;IFZI)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a:Ljava/util/HashMap;

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;

    :goto_8
    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1f

    move-result-object v0

    if-eqz v0, :cond_e

    :goto_c
    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_c

    :cond_1a
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;->get()Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_1f

    move-result-object v0

    goto :goto_c

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b:Ljava/util/HashMap;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->c:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_22

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_1b
    monitor-exit p0

    return-object v0

    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/h;->get()Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_22

    move-result-object v0

    goto :goto_1b

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/g;->c:Ljava/lang/ref/ReferenceQueue;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
