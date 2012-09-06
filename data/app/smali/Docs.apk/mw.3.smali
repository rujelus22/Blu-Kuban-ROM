.class public Lmw;
.super Ljava/lang/Object;
.source "DiscussionManager.java"


# instance fields
.field private final a:LIG;

.field a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Ljava/lang/String;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "DiscussionTrackerLabel"
    .end annotation
.end field

.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "LmA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LIG;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmw;->a:LIG;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lmz;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmw;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lmw;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmA;

    .line 54
    :goto_d
    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, LmA;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 55
    :cond_15
    new-instance v0, LmA;

    iget-object v3, p0, Lmw;->a:LIG;

    iget-object v4, p0, Lmw;->a:LdE;

    iget-object v5, p0, Lmw;->a:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LmA;-><init>(Ljava/lang/String;Ljava/lang/String;LIG;LdE;Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmw;->a:Ljava/lang/ref/WeakReference;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2d

    .line 59
    :cond_29
    monitor-exit p0

    return-object v0

    .line 53
    :cond_2b
    const/4 v0, 0x0

    goto :goto_d

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
