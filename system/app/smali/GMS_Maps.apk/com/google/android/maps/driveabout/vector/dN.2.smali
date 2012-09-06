.class Lcom/google/android/maps/driveabout/vector/dN;
.super Lcom/google/android/maps/driveabout/vector/c;
.source "SourceFile"


# instance fields
.field private b:F

.field private c:F

.field private volatile d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 3
    .parameter

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->e:Z

    .line 987
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    const/4 v0, 0x2

    .line 1022
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dN;->d:I

    if-lt v1, v0, :cond_6

    const/4 v0, 0x4

    :cond_6
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 998
    monitor-enter p0

    .line 999
    :try_start_2
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->b:F

    .line 1000
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/dN;->c:F

    .line 1001
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dN;->b:F

    .line 1002
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dN;->c:F

    .line 1003
    cmpl-float v2, v0, v3

    if-nez v2, :cond_2c

    cmpl-float v2, v1, v3

    if-nez v2, :cond_2c

    .line 1004
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->d:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_22

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->e:Z

    if-eqz v0, :cond_27

    .line 1007
    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->a:Lcom/google/android/maps/driveabout/vector/l;

    monitor-exit p0

    move-object p0, v0

    .line 1013
    :goto_26
    return-object p0

    .line 1009
    :cond_27
    monitor-exit p0

    goto :goto_26

    .line 1011
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 1012
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dN;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-static {v2, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->a:Lcom/google/android/maps/driveabout/vector/l;

    goto :goto_26
.end method

.method declared-synchronized a(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 990
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->b:F

    .line 991
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->c:F

    .line 992
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->d:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 993
    monitor-exit p0

    return-void

    .line 990
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dN;->e:Z

    .line 1018
    return-void
.end method
