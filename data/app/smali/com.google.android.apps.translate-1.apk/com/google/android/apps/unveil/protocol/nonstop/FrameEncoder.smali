.class public Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;
.super Ljava/lang/Object;
.source "FrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$1;,
        Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;
    }
.end annotation


# static fields
.field private static final DIFFERENCE_THRESHOLD:I = 0x19

.field private static final INITIAL_JPEG_QUALITY:I = 0x32

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private lastRequestImageSignature:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private getJpegQuality(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)I
    .registers 3
    .parameter "frame"

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->recommendedQuality()I

    move-result v0

    return v0
.end method


# virtual methods
.method public encode(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;
    .registers 9
    .parameter "frame"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;->getJpegQuality(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)I

    move-result v2

    .line 52
    .local v2, quality:I
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getHeight()I

    move-result v4

    invoke-static {v0, v3, v4, v2}, Lcom/google/android/apps/unveil/env/ImageUtils;->encodeJpegFromYUV420SP([BIII)[B

    move-result-object v1

    .line 54
    .local v1, jpegData:[B
    new-instance v0, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;-><init>([BILcom/google/android/apps/unveil/env/Size;JLcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$1;)V

    return-object v0
.end method
