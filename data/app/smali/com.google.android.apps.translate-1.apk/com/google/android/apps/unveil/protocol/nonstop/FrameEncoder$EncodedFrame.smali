.class public Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;
.super Ljava/lang/Object;
.source "FrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodedFrame"
.end annotation


# instance fields
.field public final jpegData:[B

.field public final quality:I

.field public final size:Lcom/google/android/apps/unveil/env/Size;

.field public final timestamp:J


# direct methods
.method private constructor <init>([BILcom/google/android/apps/unveil/env/Size;J)V
    .registers 6
    .parameter "jpegData"
    .parameter "quality"
    .parameter "size"
    .parameter "timestamp"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->jpegData:[B

    .line 42
    iput p2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->quality:I

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->size:Lcom/google/android/apps/unveil/env/Size;

    .line 44
    iput-wide p4, p0, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;->timestamp:J

    .line 45
    return-void
.end method

.method synthetic constructor <init>([BILcom/google/android/apps/unveil/env/Size;JLcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/unveil/protocol/nonstop/FrameEncoder$EncodedFrame;-><init>([BILcom/google/android/apps/unveil/env/Size;J)V

    return-void
.end method
