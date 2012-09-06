.class public Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;
.super Ljava/lang/Object;
.source "ActiveFrameQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveFrame"
.end annotation


# instance fields
.field public final cachedJpeg:[B

.field private final debugDrawer:Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;

.field public final downsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

.field public final frameNum:I

.field public final metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)V
    .registers 4
    .parameter "timestampedFrame"
    .parameter "cachedJpeg"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->frameNum:I

    .line 34
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->downsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->downsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/DownsampledImage;->addReference()V

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->cachedJpeg:[B

    .line 38
    invoke-static {p1, p2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->createDebugDrawer(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->debugDrawer:Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[BLcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;-><init>(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)V

    return-void
.end method

.method private static createDebugDrawer(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;
    .registers 3
    .parameter "timestampedFrame"
    .parameter "cachedJpeg"

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/TimestampedFrameDebugDrawer;-><init>(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;[B)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IF)V
    .registers 5
    .parameter "canvas"
    .parameter "offset"
    .parameter "thumbnailWidth"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->debugDrawer:Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/unveil/protocol/nonstop/DebugDrawer;->draw(Landroid/graphics/Canvas;IF)V

    .line 59
    return-void
.end method

.method public getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->downsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    return-object v0
.end method

.method public getFrameNum()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->frameNum:I

    return v0
.end method

.method public getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method
