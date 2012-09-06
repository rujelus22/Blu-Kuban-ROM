.class final Lcom/google/common/cache/w;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Lcom/google/common/cache/LocalCache$LocalManualCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$LocalManualCache;Ljava/util/concurrent/Callable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4764
    iput-object p1, p0, Lcom/google/common/cache/w;->b:Lcom/google/common/cache/LocalCache$LocalManualCache;

    iput-object p2, p0, Lcom/google/common/cache/w;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 4767
    iget-object v0, p0, Lcom/google/common/cache/w;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
