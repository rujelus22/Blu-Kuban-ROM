.class Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimestampedDeltas"
.end annotation


# instance fields
.field final deltas:[B

.field final synthetic this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

.field final timestamp:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/tracking/ObjectTracker;J[B)V
    .registers 5
    .parameter
    .parameter "timestamp"
    .parameter "deltas"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;->timestamp:J

    .line 87
    iput-object p4, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TimestampedDeltas;->deltas:[B

    .line 88
    return-void
.end method
