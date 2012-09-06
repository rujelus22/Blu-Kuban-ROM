.class final Lcom/google/common/collect/cG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 120
    return-void
.end method
