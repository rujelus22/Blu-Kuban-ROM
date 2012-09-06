.class public abstract Lcom/twitter/android/util/p;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Z


# instance fields
.field protected final b:Ljava/util/HashMap;

.field protected final c:Ljava/util/ArrayList;

.field protected final d:Ljava/util/LinkedHashMap;

.field protected final e:Ljava/util/HashMap;

.field protected final f:Landroid/os/Handler;

.field final g:[I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twitter/android/util/p;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 9

    const/16 v3, 0x14

    const/high16 v2, 0x4120

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/util/p;->f:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/twitter/android/util/p;->g:[I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/p;->k:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/util/p;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/twitter/android/util/p;->d:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/twitter/android/util/p;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/util/p;->b:Ljava/util/HashMap;

    iput p2, p0, Lcom/twitter/android/util/p;->h:I

    iput p3, p0, Lcom/twitter/android/util/p;->i:I

    iput p4, p0, Lcom/twitter/android/util/p;->j:I

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/util/p;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/util/p;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/util/p;)I
    .registers 2

    iget v0, p0, Lcom/twitter/android/util/p;->j:I

    return v0
.end method

.method private b()V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/util/p;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/twitter/android/util/p;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/twitter/android/util/p;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/util/q;

    invoke-direct {v1, p0}, Lcom/twitter/android/util/q;-><init>(Lcom/twitter/android/util/p;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v0, Lcom/twitter/android/util/p;->a:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/twitter/android/util/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/o;

    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sorted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/twitter/android/util/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/twitter/android/util/o;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_4e
    iget-object v0, p0, Lcom/twitter/android/util/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/twitter/android/util/p;->h:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/twitter/android/util/p;->i:I

    add-int v2, v0, v1

    sget-boolean v0, Lcom/twitter/android/util/p;->a:Z

    if-eqz v0, :cond_79

    const-string v0, "ImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Purging: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " items"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    const/4 v0, 0x0

    move v1, v0

    :goto_7b
    if-ge v1, v2, :cond_b6

    iget-object v0, p0, Lcom/twitter/android/util/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/o;

    sget-boolean v3, Lcom/twitter/android/util/p;->a:Z

    if-eqz v3, :cond_ab

    const-string v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/twitter/android/util/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/twitter/android/util/o;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    iget-object v3, p0, Lcom/twitter/android/util/p;->b:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/twitter/android/util/o;->c:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7b

    :cond_b6
    iget-object v0, p0, Lcom/twitter/android/util/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private b(JLjava/lang/Object;Ljava/lang/String;Z)V
    .registers 11

    if-eqz p4, :cond_2f

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v1, p0, Lcom/twitter/android/util/p;->g:[I

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/twitter/android/util/p;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lcom/twitter/android/util/s;

    invoke-direct {v0, p0, p4, p5}, Lcom/twitter/android/util/s;-><init>(Lcom/twitter/android/util/p;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/twitter/android/util/p;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/twitter/android/util/p;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/util/p;->f:Landroid/os/Handler;

    new-instance v2, Lcom/twitter/android/util/t;

    invoke-direct {v2, p0, p1, p2}, Lcom/twitter/android/util/t;-><init>(Lcom/twitter/android/util/p;J)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_30

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a(JLjava/lang/Object;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/util/p;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/o;

    sget-boolean v2, Lcom/twitter/android/util/p;->a:Z

    if-eqz v2, :cond_21

    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    if-eqz v0, :cond_58

    sget-boolean v2, Lcom/twitter/android/util/p;->a:Z

    if-eqz v2, :cond_3d

    const-string v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Have photo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/twitter/android/util/o;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v2, v0, Lcom/twitter/android/util/o;->a:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v0}, Lcom/twitter/android/util/o;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_51

    move-object v0, v1

    :goto_4c
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/util/p;->b(JLjava/lang/Object;Ljava/lang/String;Z)V

    move-object v1, v0

    :goto_50
    return-object v1

    :cond_51
    iget v2, v0, Lcom/twitter/android/util/o;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/twitter/android/util/o;->b:I

    goto :goto_50

    :cond_58
    sget-boolean v0, Lcom/twitter/android/util/p;->a:Z

    if-eqz v0, :cond_70

    const-string v0, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Looking in persistent storage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    invoke-direct/range {p0 .. p5}, Lcom/twitter/android/util/p;->b(JLjava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_50

    :cond_74
    move-object v0, v1

    goto :goto_4c
.end method

.method protected final a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/util/p;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/o;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/twitter/android/util/o;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected abstract a(JLjava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/o;
.end method

.method protected abstract a(JLjava/lang/Object;Ljava/lang/String;[B)Lcom/twitter/android/util/o;
.end method

.method protected final a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/o;
    .registers 5

    if-eqz p1, :cond_a

    invoke-virtual {p0, p2, p3}, Lcom/twitter/android/util/p;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/o;->a(Landroid/graphics/Bitmap;)V

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/o;
.end method

.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/util/p;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/twitter/android/util/p;->g:[I

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/twitter/android/util/p;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract a(Ljava/util/HashMap;)V
.end method

.method final b(Ljava/util/HashMap;)V
    .registers 9

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_62

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/o;

    if-eqz v0, :cond_52

    iget-object v3, v0, Lcom/twitter/android/util/o;->a:Ljava/lang/String;

    sget-boolean v4, Lcom/twitter/android/util/p;->a:Z

    if-eqz v4, :cond_40

    const-string v4, "ImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Loaded: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    iget-object v3, p0, Lcom/twitter/android/util/p;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget v4, p0, Lcom/twitter/android/util/p;->h:I

    if-lt v3, v4, :cond_4d

    invoke-direct {p0}, Lcom/twitter/android/util/p;->b()V

    :cond_4d
    iget-object v3, p0, Lcom/twitter/android/util/p;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    iget-object v3, p0, Lcom/twitter/android/util/p;->g:[I

    monitor-enter v3

    :try_start_55
    iget-object v0, p0, Lcom/twitter/android/util/p;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_5c

    goto :goto_e

    :catchall_5c
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5f
    invoke-virtual {p0, p1}, Lcom/twitter/android/util/p;->a(Ljava/util/HashMap;)V

    :cond_62
    return-void
.end method
