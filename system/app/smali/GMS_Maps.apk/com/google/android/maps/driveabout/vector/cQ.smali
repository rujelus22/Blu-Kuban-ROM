.class public Lcom/google/android/maps/driveabout/vector/cq;
.super Lcom/google/android/maps/driveabout/vector/cZ;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/cY;

.field private b:Lcom/google/android/maps/driveabout/vector/cJ;

.field private c:Lcom/google/android/maps/driveabout/vector/dg;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cZ;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/dg;ZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cJ;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:Lcom/google/android/maps/driveabout/vector/cJ;

    if-nez v0, :cond_b

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cZ;->a(Lcom/google/android/maps/driveabout/vector/dg;ZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:Lcom/google/android/maps/driveabout/vector/cJ;

    .line 49
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:Lcom/google/android/maps/driveabout/vector/cJ;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/dg;IZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cY;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:Lcom/google/android/maps/driveabout/vector/cY;

    if-nez v0, :cond_11

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/cZ;->a(Lcom/google/android/maps/driveabout/vector/dg;IZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cY;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:Lcom/google/android/maps/driveabout/vector/cY;

    .line 27
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:Lcom/google/android/maps/driveabout/vector/dg;

    .line 28
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:I

    .line 29
    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:Z

    .line 38
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:Lcom/google/android/maps/driveabout/vector/cY;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 24
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
