.class public LX/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX/d;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, LX/b;->a:I

    .line 29
    iput v0, p0, LX/b;->b:I

    .line 79
    return-void
.end method

.method private declared-synchronized a()V
    .registers 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    iget v0, p0, LX/b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LX/b;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(LX/b;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, LX/b;->a()V

    return-void
.end method

.method private declared-synchronized b()V
    .registers 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    iget v0, p0, LX/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LX/b;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(LX/b;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, LX/b;->b()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget v0, p0, LX/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LX/b;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(LX/b;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, LX/b;->c()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, LX/c;

    invoke-direct {v0, p0, p1, p2}, LX/c;-><init>(LX/b;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
