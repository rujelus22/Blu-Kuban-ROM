.class public Lcom/google/googlenav/android/U;
.super Ljava/lang/Object;


# static fields
.field private static volatile g:Lcom/google/googlenav/android/U;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;

.field private c:I

.field private d:I

.field private e:Landroid/content/Intent;

.field private final f:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/U;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/android/U;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/googlenav/android/U;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/google/googlenav/android/U;
    .registers 1

    sget-object v0, Lcom/google/googlenav/android/U;->g:Lcom/google/googlenav/android/U;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Lcom/google/googlenav/android/U;->g:Lcom/google/googlenav/android/U;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/googlenav/android/U;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/U;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/googlenav/android/U;->g:Lcom/google/googlenav/android/U;

    :cond_b
    return-void
.end method

.method private c()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/U;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->a(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/android/U;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/U;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/googlenav/android/U;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/V;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/googlenav/android/V;->a(IILandroid/content/Intent;)V

    :goto_17
    return-void

    :cond_18
    iget-object v1, p0, Lcom/google/googlenav/android/U;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iput p1, p0, Lcom/google/googlenav/android/U;->c:I

    iput p2, p0, Lcom/google/googlenav/android/U;->d:I

    iput-object p3, p0, Lcom/google/googlenav/android/U;->e:Landroid/content/Intent;

    monitor-exit v1

    goto :goto_17

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v0
.end method

.method public a(ILcom/google/googlenav/android/V;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/android/U;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/googlenav/android/U;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V
    .registers 5

    invoke-interface {p2}, Lcom/google/googlenav/android/V;->ab_()I

    move-result v0

    invoke-direct {p0}, Lcom/google/googlenav/android/U;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0, v0, p2}, Lcom/google/googlenav/android/U;->a(ILcom/google/googlenav/android/V;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/V;)V
    .registers 6

    iget-object v1, p0, Lcom/google/googlenav/android/U;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/googlenav/android/U;->c:I

    invoke-interface {p1}, Lcom/google/googlenav/android/V;->ab_()I

    move-result v2

    if-ne v0, v2, :cond_1d

    iget v0, p0, Lcom/google/googlenav/android/U;->c:I

    iget v2, p0, Lcom/google/googlenav/android/U;->d:I

    iget-object v3, p0, Lcom/google/googlenav/android/U;->e:Landroid/content/Intent;

    invoke-interface {p1, v0, v2, v3}, Lcom/google/googlenav/android/V;->a(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/android/U;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/android/U;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/android/U;->e:Landroid/content/Intent;

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public a(Ljava/lang/Class;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/googlenav/android/U;->c()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/google/googlenav/android/U;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()I
    .registers 3

    iget-object v1, p0, Lcom/google/googlenav/android/U;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/googlenav/android/U;->c:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
