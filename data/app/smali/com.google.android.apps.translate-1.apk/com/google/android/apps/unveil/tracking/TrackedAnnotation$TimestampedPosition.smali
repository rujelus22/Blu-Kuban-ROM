.class Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;
.super Ljava/lang/Object;
.source "TrackedAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimestampedPosition"
.end annotation


# instance fields
.field position:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

.field timestamp:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;JLandroid/graphics/RectF;)V
    .registers 5
    .parameter
    .parameter "timestamp"
    .parameter "position"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;->this$0:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p2, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;->timestamp:J

    .line 36
    iput-object p4, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;->position:Landroid/graphics/RectF;

    .line 37
    return-void
.end method
