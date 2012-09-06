.class final LaoN;
.super Ljava/lang/Object;
.source "Initializer.java"


# instance fields
.field private final a:Ljava/lang/Thread;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Laph",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Initializer$InjectableReference",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, LaoN;->a:Ljava/lang/Thread;

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, LaoN;->a:Ljava/util/concurrent/CountDownLatch;

    .line 49
    invoke-static {}, Lakz;->a()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, LaoN;->a:Ljava/util/Map;

    .line 53
    invoke-static {}, Lakz;->a()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, LaoN;->b:Ljava/util/Map;

    .line 116
    return-void
.end method
