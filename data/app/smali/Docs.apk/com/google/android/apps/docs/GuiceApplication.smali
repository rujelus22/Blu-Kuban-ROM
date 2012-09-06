.class public Lcom/google/android/apps/docs/GuiceApplication;
.super Landroid/app/Application;
.source "GuiceApplication.java"

# interfaces
.implements LcK;


# instance fields
.field private volatile a:Lans;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private b()Lans;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/GuiceApplication;->a(Ljava/util/List;)V

    .line 37
    invoke-static {v0}, LVX;->a(Ljava/lang/Iterable;)Lans;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lans;
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceApplication;->a:Lans;

    if-nez v0, :cond_12

    .line 25
    const-class v1, LVX;

    monitor-enter v1

    .line 26
    :try_start_7
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceApplication;->a:Lans;

    if-nez v0, :cond_11

    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceApplication;->b()Lans;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/GuiceApplication;->a:Lans;

    .line 29
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 31
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceApplication;->a:Lans;

    return-object v0

    .line 29
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected a(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method
