.class Lcom/google/android/maps/driveabout/vector/bE;
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

.field private g:Lcom/google/android/maps/driveabout/vector/bD;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1651
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bE;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/bv;)V
    .registers 2
    .parameter

    .prologue
    .line 1650
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bE;-><init>()V

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x1

    .line 1737
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->b:Z

    if-nez v0, :cond_11

    .line 1741
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->c:I

    .line 1742
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->c:I

    if-lt v0, v2, :cond_f

    .line 1743
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bE;->e:Z

    .line 1749
    :cond_f
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bE;->b:Z

    .line 1751
    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bD;)V
    .registers 3
    .parameter

    .prologue
    .line 1657
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/bD;->a(Lcom/google/android/maps/driveabout/vector/bD;Z)Z

    .line 1658
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    if-ne v0, p1, :cond_c

    .line 1659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    .line 1661
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 1662
    monitor-exit p0

    return-void

    .line 1657
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

    .line 1715
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->d:Z

    if-nez v2, :cond_3c

    .line 1716
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bE;->c()V

    .line 1717
    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 1718
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->c:I

    const/high16 v4, 0x2

    if-ge v2, v4, :cond_24

    .line 1719
    const-string v2, "Q3Dimension MSM7500 "

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    move v2, v1

    :goto_1f
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->e:Z

    .line 1721
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1724
    :cond_24
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bE;->e:Z

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
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->f:Z

    .line 1732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->d:Z
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_40

    .line 1734
    :cond_3c
    monitor-exit p0

    return-void

    :cond_3e
    move v2, v0

    .line 1719
    goto :goto_1f

    .line 1715
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 2

    .prologue
    .line 1706
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->f:Z
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
    .line 1710
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bE;->c()V

    .line 1711
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->e:Z
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

    .line 1710
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bD;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1672
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    if-nez v1, :cond_f

    .line 1673
    :cond_9
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    .line 1674
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1688
    :cond_e
    :goto_e
    return v0

    .line 1677
    :cond_f
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bE;->c()V

    .line 1678
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bE;->e:Z

    if-nez v1, :cond_e

    .line 1685
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    if-eqz v0, :cond_1f

    .line 1686
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->g()V

    .line 1688
    :cond_1f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/bD;)V
    .registers 3
    .parameter

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    if-ne v0, p1, :cond_7

    .line 1697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bE;->g:Lcom/google/android/maps/driveabout/vector/bD;

    .line 1699
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1700
    return-void
.end method
