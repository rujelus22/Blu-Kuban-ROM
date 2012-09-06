.class public Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
.super Ljava/lang/Object;
.source "BoundingBoxLayer.java"


# instance fields
.field private boxes:[Lcom/google/android/apps/unveil/env/gl/BoundingBox;

.field private final context:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

.field private final program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;Lcom/google/android/apps/unveil/env/gl/ShaderProgram;)V
    .registers 3
    .parameter "context"
    .parameter "program"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->context:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    .line 21
    return-void
.end method


# virtual methods
.method public declared-synchronized generateBoxes(I)V
    .registers 8
    .parameter "count"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    new-array v1, p1, [Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    iput-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->boxes:[Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    if-ge v0, p1, :cond_1a

    .line 30
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->boxes:[Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    new-instance v2, Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->context:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    const/high16 v5, 0x4040

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;-><init>(Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;Lcom/google/android/apps/unveil/env/gl/ShaderProgram;F)V

    aput-object v2, v1, v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 32
    :cond_1a
    monitor-exit p0

    return-void

    .line 27
    .end local v0           #i:I
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;
    .registers 3
    .parameter "i"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->boxes:[Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    aget-object v0, v0, p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .registers 2

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->boxes:[Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized render()V
    .registers 6

    .prologue
    .line 41
    monitor-enter p0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_5
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 43
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->boxes:[Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->boxes:[Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1b

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->boxes:[Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->render()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_20

    .line 43
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 48
    :cond_1e
    monitor-exit p0

    return-void

    .line 41
    .end local v0           #i:I
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method
