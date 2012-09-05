.class public final Lcom/cooliris/media/DiskCacheSEC$RecordSEC;
.super Lcom/cooliris/media/DiskCache$Record;
.source "DiskCacheSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/DiskCacheSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RecordSEC"
.end annotation


# instance fields
.field public final diskId:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 8
    .parameter "chunk"
    .parameter "offset"
    .parameter "size"
    .parameter "sizeOnDisk"
    .parameter "timestamp"

    .prologue
    .line 419
    invoke-direct/range {p0 .. p6}, Lcom/cooliris/media/DiskCache$Record;-><init>(IIIIJ)V

    .line 420
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->diskId:I

    .line 421
    return-void
.end method

.method public constructor <init>(IIIIJI)V
    .registers 8
    .parameter "chunk"
    .parameter "offset"
    .parameter "size"
    .parameter "sizeOnDisk"
    .parameter "timestamp"
    .parameter "diskId"

    .prologue
    .line 424
    invoke-direct/range {p0 .. p6}, Lcom/cooliris/media/DiskCache$Record;-><init>(IIIIJ)V

    .line 425
    iput p7, p0, Lcom/cooliris/media/DiskCacheSEC$RecordSEC;->diskId:I

    .line 426
    return-void
.end method


# virtual methods
.method public checksum()I
    .registers 4

    .prologue
    .line 429
    iget v0, p0, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    iget v1, p0, Lcom/cooliris/media/DiskCache$Record;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/cooliris/media/DiskCache$Record;->size:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
