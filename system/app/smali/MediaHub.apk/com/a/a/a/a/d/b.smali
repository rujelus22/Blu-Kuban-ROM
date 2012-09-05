.class public final Lcom/a/a/a/a/d/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/a/a/a/a/d/b;

.field private static d:Lcom/a/a/a/a/b/h;


# instance fields
.field private volatile b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/a/a/a/d/b;

    invoke-direct {v0}, Lcom/a/a/a/a/d/b;-><init>()V

    sput-object v0, Lcom/a/a/a/a/d/b;->a:Lcom/a/a/a/a/d/b;

    new-instance v0, Lcom/a/a/a/a/d/c;

    invoke-direct {v0}, Lcom/a/a/a/a/d/c;-><init>()V

    sput-object v0, Lcom/a/a/a/a/d/b;->d:Lcom/a/a/a/a/b/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a/d/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/a/a/a/a/d/b;
    .registers 1

    sget-object v0, Lcom/a/a/a/a/d/b;->a:Lcom/a/a/a/a/d/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/a/a/a/a/a/c;->a()Lcom/a/a/a/a/a/c;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-static {}, Lcom/a/a/a/a/a/c;->a()Lcom/a/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/a/a/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;JLandroid/os/Handler;)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    move v0, v1

    :goto_b
    return v0

    :cond_c
    if-nez p0, :cond_12

    :cond_e
    :goto_e
    if-nez v2, :cond_1e

    move v0, v1

    goto :goto_b

    :cond_12
    sget-object v0, Lcom/a/a/a/a/d/b;->d:Lcom/a/a/a/a/b/h;

    invoke-static {p0, v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    move-object v2, v0

    goto :goto_e

    :cond_1e
    invoke-static {}, Lcom/a/a/a/a/a/c;->a()Lcom/a/a/a/a/a/c;

    move-result-object v0

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/a/a/a/a/a/c;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLandroid/os/Handler;)Z

    move-result v0

    goto :goto_b
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {}, Lcom/a/a/a/a/a/c;->a()Lcom/a/a/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/a/a/a/a/c;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/a/a/a/a/d/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_14

    iget-object v1, p0, Lcom/a/a/a/a/d/b;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/a/a/a/a/d/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/a/a/d/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .registers 3

    iget-object v1, p0, Lcom/a/a/a/a/d/b;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/a/a/a/a/d/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0
.end method
