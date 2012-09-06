.class public Lcom/google/android/maps/driveabout/vector/A;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-gtz v0, :cond_1a

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Ljava/util/List;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 64
    :cond_1a
    :goto_1a
    return-void

    .line 45
    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 46
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 47
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 53
    monitor-enter p0

    .line 54
    :try_start_36
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ad;

    .line 55
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 56
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    goto :goto_3c

    .line 59
    :catchall_52
    move-exception v0

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_36 .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_52

    goto :goto_1a
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/A;->a:Ljava/util/List;

    .line 37
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 27
    const v0, 0x55730

    return v0
.end method
