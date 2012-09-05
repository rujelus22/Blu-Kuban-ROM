.class public LX/a;
.super Ljava/lang/Object;

# interfaces
.implements LX/c;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LX/a;->a:I

    iput v0, p0, LX/a;->b:I

    return-void
.end method

.method private declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, LX/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LX/a;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(LX/a;)V
    .registers 1

    invoke-direct {p0}, LX/a;->a()V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, LX/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LX/a;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(LX/a;)V
    .registers 1

    invoke-direct {p0}, LX/a;->b()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, LX/a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LX/a;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(LX/a;)V
    .registers 1

    invoke-direct {p0}, LX/a;->c()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4

    new-instance v0, LX/b;

    invoke-direct {v0, p0, p1, p2}, LX/b;-><init>(LX/a;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
