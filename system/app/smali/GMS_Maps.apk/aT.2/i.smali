.class public abstract LaT/i;
.super LY/d;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/android/Y;

.field private final b:Z

.field private f:Ljava/lang/Runnable;

.field private final g:Ljava/util/concurrent/locks/Lock;

.field private h:Z


# direct methods
.method public constructor <init>(LY/c;Lcom/google/googlenav/android/Y;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, LY/d;-><init>(LY/c;)V

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, LaT/i;->g:Ljava/util/concurrent/locks/Lock;

    .line 35
    iput-object p2, p0, LaT/i;->a:Lcom/google/googlenav/android/Y;

    .line 36
    iput-boolean p3, p0, LaT/i;->b:Z

    .line 37
    invoke-direct {p0}, LaT/i;->m()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, LaT/i;->f:Ljava/lang/Runnable;

    .line 38
    return-void
.end method

.method static synthetic a(LaT/i;)Ljava/util/concurrent/locks/Lock;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, LaT/i;->g:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic a(LaT/i;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, LaT/i;->h:Z

    return p1
.end method

.method static synthetic b(LaT/i;)Z
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, LaT/i;->h:Z

    return v0
.end method

.method private m()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 69
    new-instance v0, LaT/j;

    invoke-direct {v0, p0}, LaT/j;-><init>(LaT/i;)V

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, LaT/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :try_start_5
    iget-boolean v0, p0, LaT/i;->h:Z

    if-nez v0, :cond_15

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, LaT/i;->h:Z

    .line 60
    iget-object v0, p0, LaT/i;->a:Lcom/google/googlenav/android/Y;

    iget-object v1, p0, LaT/i;->f:Ljava/lang/Runnable;

    iget-boolean v2, p0, LaT/i;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    .line 63
    :cond_15
    iget-object v0, p0, LaT/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    return-void

    .line 63
    :catchall_1b
    move-exception v0

    iget-object v1, p0, LaT/i;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected abstract b()V
.end method
