.class Lms;
.super Ljava/lang/Object;
.source "OperationsModule.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<",
        "Lmj;",
        ">;"
    }
.end annotation


# instance fields
.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LRS;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lmj;

.field b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Llu;",
            ">;"
        }
    .end annotation
.end field

.field c:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field d:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LFX;",
            ">;"
        }
    .end annotation
.end field

.field e:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field f:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LLh;",
            ">;"
        }
    .end annotation
.end field

.field g:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LeZ;",
            ">;"
        }
    .end annotation
.end field

.field h:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LTF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lms;->a()Lmj;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a()Lmj;
    .registers 9

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lms;->a:Lmj;

    if-nez v0, :cond_50

    .line 52
    new-instance v0, Lmj;

    iget-object v1, p0, Lms;->a:LanD;

    invoke-interface {v1}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LRS;

    iget-object v2, p0, Lms;->b:LanD;

    invoke-interface {v2}, LanD;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llu;

    iget-object v3, p0, Lms;->c:LanD;

    invoke-interface {v3}, LanD;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lms;->d:LanD;

    invoke-interface {v4}, LanD;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LFX;

    iget-object v5, p0, Lms;->e:LanD;

    invoke-interface {v5}, LanD;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    iget-object v6, p0, Lms;->f:LanD;

    invoke-interface {v6}, LanD;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LLh;

    iget-object v7, p0, Lms;->g:LanD;

    invoke-interface {v7}, LanD;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LeZ;

    invoke-direct/range {v0 .. v7}, Lmj;-><init>(LRS;Llu;Ljava/util/concurrent/Executor;LFX;Landroid/content/Context;LLh;LeZ;)V

    iput-object v0, p0, Lms;->a:Lmj;

    .line 62
    iget-object v1, p0, Lms;->a:Lmj;

    iget-object v0, p0, Lms;->h:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTF;

    iput-object v0, v1, Lmj;->a:LTF;

    .line 65
    :cond_50
    iget-object v0, p0, Lms;->a:Lmj;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    monitor-exit p0

    return-object v0

    .line 51
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method
