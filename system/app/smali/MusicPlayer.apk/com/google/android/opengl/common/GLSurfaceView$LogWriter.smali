.class Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;
.super Ljava/io/Writer;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/common/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogWriter"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 1752
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private flushBuilder()V
    .registers 4

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1776
    const-string v0, "GLSurfaceView"

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1779
    :cond_1f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 1755
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1756
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 1759
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1760
    return-void
.end method

.method public write([CII)V
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 1763
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p3, :cond_17

    .line 1764
    add-int v2, p2, v1

    aget-char v0, p1, v2

    .line 1765
    .local v0, c:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_11

    .line 1766
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->flushBuilder()V

    .line 1763
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1769
    :cond_11
    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 1772
    .end local v0           #c:C
    :cond_17
    return-void
.end method
