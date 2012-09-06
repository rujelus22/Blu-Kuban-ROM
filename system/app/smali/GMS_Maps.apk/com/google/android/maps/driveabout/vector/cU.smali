.class public abstract Lcom/google/android/maps/driveabout/vector/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/android/maps/driveabout/vector/cy;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cb;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cb;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 87
    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/vector/cy;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cu;->b:Lcom/google/android/maps/driveabout/vector/cy;

    .line 126
    return-void
.end method

.method protected a(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    return-void
.end method

.method final b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cu;->a(Z)Z

    move-result v0

    .line 112
    if-eqz v0, :cond_14

    .line 113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cu;->b:Lcom/google/android/maps/driveabout/vector/cy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/cu;)V

    .line 114
    monitor-enter p0

    .line 115
    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cu;->a:Z

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    monitor-exit p0

    .line 119
    :cond_14
    return-void

    .line 117
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method

.method final b()Z
    .registers 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cu;->c:Z

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cu;->c:Z

    .line 143
    return v0
.end method
