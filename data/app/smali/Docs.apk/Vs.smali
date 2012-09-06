.class LVs;
.super Ljava/lang/Object;
.source "SyncModule.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LVr;


# direct methods
.method constructor <init>(LVr;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, LVs;->a:LVr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, LVs;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
