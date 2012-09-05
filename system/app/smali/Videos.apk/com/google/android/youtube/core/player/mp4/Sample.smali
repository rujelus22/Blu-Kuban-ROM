.class public Lcom/google/android/youtube/core/player/mp4/Sample;
.super Ljava/lang/Object;
.source "Sample.java"


# instance fields
.field public final chunk:I

.field public final chunkOffset:I

.field public final dts:I

.field public final duration:I

.field public final index:I

.field public final indexFromEnd:I

.field public final offset:I

.field public final pts:I

.field public final seekable:Z

.field public final size:I


# direct methods
.method public constructor <init>(IIIIIIIIIZ)V
    .registers 11
    .parameter "dts"
    .parameter "pts"
    .parameter "duration"
    .parameter "offset"
    .parameter "size"
    .parameter "chunk"
    .parameter "chunkOffset"
    .parameter "index"
    .parameter "indexFromEnd"
    .parameter "seekable"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->dts:I

    .line 38
    iput p2, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->pts:I

    .line 39
    iput p3, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->duration:I

    .line 40
    iput p4, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->offset:I

    .line 41
    iput p5, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->size:I

    .line 42
    iput p6, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->chunk:I

    .line 43
    iput p7, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->chunkOffset:I

    .line 44
    iput p8, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->index:I

    .line 45
    iput p9, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->indexFromEnd:I

    .line 46
    iput-boolean p10, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->seekable:Z

    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chunk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->chunk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", chunkOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->chunkOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->dts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->pts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", indexFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->indexFromEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seekable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/mp4/Sample;->seekable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
