.class final Lcom/google/android/gsf/h;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gsf/g;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/g;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/gsf/h;->a:Lcom/google/android/gsf/g;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 4
    .parameter

    .prologue
    .line 68
    const-class v1, Lcom/google/android/gsf/f;

    monitor-enter v1

    .line 69
    :try_start_3
    invoke-static {}, Lcom/google/android/gsf/f;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gsf/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method
