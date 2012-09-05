.class Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectFinalizeQueue"
.end annotation


# instance fields
.field private mTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method declared-synchronized doCleanup()V
    .registers 7

    .prologue
    .line 1172
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    .line 1173
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1174
    .local v2, textures:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 1175
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1176
    :cond_26
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1177
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_5a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_30} :catch_32

    .line 1187
    .end local v1           #i:I
    .end local v2           #textures:[I
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 1179
    :catch_32
    move-exception v0

    .line 1184
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_33
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$900()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring exception while cleaning up textures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTextures: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_33 .. :try_end_59} :catchall_5a

    goto :goto_30

    .line 1172
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_5a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized queueTexture(I)V
    .registers 4
    .parameter "textureId"

    .prologue
    .line 1164
    monitor-enter p0

    if-lez p1, :cond_c

    .line 1165
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->mTextures:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 1166
    :cond_c
    monitor-exit p0

    return-void

    .line 1164
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
