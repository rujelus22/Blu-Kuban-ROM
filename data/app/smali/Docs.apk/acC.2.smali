.class LacC;
.super Landroid/database/ContentObserver;
.source "Gservices.java"


# instance fields
.field final synthetic a:LacB;


# direct methods
.method constructor <init>(LacB;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, LacC;->a:LacB;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter

    .prologue
    .line 68
    const-class v1, LacA;

    monitor-enter v1

    .line 69
    :try_start_3
    invoke-static {}, LacA;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, LacA;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method
