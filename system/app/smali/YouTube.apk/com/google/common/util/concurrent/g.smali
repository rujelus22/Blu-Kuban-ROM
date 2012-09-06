.class public final Lcom/google/common/util/concurrent/g;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/f;


# instance fields
.field private final a:Lcom/google/common/util/concurrent/b;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 38
    new-instance v0, Lcom/google/common/util/concurrent/b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/b;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/b;

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 38
    new-instance v0, Lcom/google/common/util/concurrent/b;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/b;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/b;

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/g;
    .registers 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 65
    new-instance v0, Lcom/google/common/util/concurrent/g;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/g;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/g;
    .registers 2
    .parameter

    .prologue
    .line 48
    new-instance v0, Lcom/google/common/util/concurrent/g;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/g;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 79
    return-void
.end method

.method protected final done()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/common/util/concurrent/g;->a:Lcom/google/common/util/concurrent/b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/b;->a()V

    .line 87
    return-void
.end method
