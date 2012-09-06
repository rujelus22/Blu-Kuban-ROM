.class Lcom/google/android/maps/driveabout/vector/bq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/android/maps/driveabout/vector/bp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1926
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bq;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/bg;)V
    .registers 2
    .parameter

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bq;-><init>()V

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x1

    .line 2012
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->b:Z

    if-nez v0, :cond_11

    .line 2016
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bq;->c:I

    .line 2017
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->c:I

    if-lt v0, v2, :cond_f

    .line 2018
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Z

    .line 2024
    :cond_f
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->b:Z

    .line 2026
    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bp;)V
    .registers 3
    .parameter

    .prologue
    .line 1932
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/bp;->a(Lcom/google/android/maps/driveabout/vector/bp;Z)Z

    .line 1933
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    if-ne v0, p1, :cond_c

    .line 1934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    .line 1936
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1937
    monitor-exit p0

    return-void

    .line 1932
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1990
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Z

    if-nez v2, :cond_3c

    .line 1991
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bq;->c()V

    .line 1992
    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 1993
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bq;->c:I

    const/high16 v4, 0x2

    if-ge v2, v4, :cond_24

    .line 1994
    const-string v2, "Q3Dimension MSM7500 "

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    move v2, v1

    :goto_1f
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Z

    .line 1996
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1999
    :cond_24
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Z

    if-eqz v2, :cond_36

    const-string v2, "Adreno"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_37

    :cond_36
    move v0, v1

    :cond_37
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->f:Z

    .line 2007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->d:Z
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_40

    .line 2009
    :cond_3c
    monitor-exit p0

    return-void

    :cond_3e
    move v2, v0

    .line 1994
    goto :goto_1f

    .line 1990
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 1981
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->f:Z
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

    .prologue
    .line 1985
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bq;->c()V

    .line 1986
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Z
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

    .line 1985
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bp;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1947
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    if-nez v1, :cond_f

    .line 1948
    :cond_9
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    .line 1949
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1963
    :cond_e
    :goto_e
    return v0

    .line 1952
    :cond_f
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bq;->c()V

    .line 1953
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bq;->e:Z

    if-nez v1, :cond_e

    .line 1960
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    if-eqz v0, :cond_1f

    .line 1961
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->j()V

    .line 1963
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/bp;)V
    .registers 3
    .parameter

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    if-ne v0, p1, :cond_7

    .line 1972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bq;->g:Lcom/google/android/maps/driveabout/vector/bp;

    .line 1974
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1975
    return-void
.end method
