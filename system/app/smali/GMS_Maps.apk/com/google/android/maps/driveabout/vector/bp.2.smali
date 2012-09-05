.class Lcom/google/android/maps/driveabout/vector/bp;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/android/maps/driveabout/vector/bo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bp;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/bf;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bp;-><init>()V

    return-void
.end method

.method private c()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z

    :cond_7
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bo;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/bo;->a(Lcom/google/android/maps/driveabout/vector/bo;Z)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    if-ne v0, p1, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bp;->d:Z

    if-nez v2, :cond_36

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bp;->c()V

    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bp;->c:I

    const/high16 v4, 0x2

    if-ge v2, v4, :cond_24

    const-string v2, "Q3Dimension MSM7500 "

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    move v2, v1

    :goto_1f
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_24
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z

    if-eqz v2, :cond_30

    const-string v2, "Adreno"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    move v0, v1

    :cond_31
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->d:Z
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3a

    :cond_36
    monitor-exit p0

    return-void

    :cond_38
    move v2, v0

    goto :goto_1f

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->f:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bp;->c()V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bo;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    if-nez v1, :cond_f

    :cond_9
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bp;->c()V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z

    if-nez v1, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->i()V

    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/bo;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Lcom/google/android/maps/driveabout/vector/bo;

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method
