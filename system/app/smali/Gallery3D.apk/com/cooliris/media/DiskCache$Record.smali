.class public Lcom/cooliris/media/DiskCache$Record;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Record"
.end annotation


# instance fields
.field public final chunk:I

.field public final offset:I

.field public final size:I

.field public final sizeOnDisk:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(IIIIJ)V
    .registers 7
    .parameter "chunk"
    .parameter "offset"
    .parameter "size"
    .parameter "sizeOnDisk"
    .parameter "timestamp"

    .prologue
    .line 414
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput p1, p0, Lcom/cooliris/media/DiskCache$Record;->chunk:I

    .line 416
    iput p2, p0, Lcom/cooliris/media/DiskCache$Record;->offset:I

    .line 417
    iput p3, p0, Lcom/cooliris/media/DiskCache$Record;->size:I

    .line 418
    iput-wide p5, p0, Lcom/cooliris/media/DiskCache$Record;->timestamp:J

    .line 419
    iput p4, p0, Lcom/cooliris/media/DiskCache$Record;->sizeOnDisk:I

    .line 420
    return-void
.end method
