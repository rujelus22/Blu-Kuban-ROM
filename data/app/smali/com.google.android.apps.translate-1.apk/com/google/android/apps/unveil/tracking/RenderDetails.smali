.class public Lcom/google/android/apps/unveil/tracking/RenderDetails;
.super Ljava/lang/Object;
.source "RenderDetails.java"


# instance fields
.field public final annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

.field protected creationTime:J

.field protected phaseStartTime:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
    .registers 4
    .parameter "annotation"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/RenderDetails;->annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/tracking/RenderDetails;->creationTime:J

    .line 24
    return-void
.end method


# virtual methods
.method protected animate(J)V
    .registers 3
    .parameter "currentTime"

    .prologue
    .line 33
    return-void
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/android/apps/unveil/tracking/RenderDetails;->creationTime:J

    return-wide v0
.end method

.method public getRenderPosition(Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/RectF;
    .registers 3
    .parameter "screenSize"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/RenderDetails;->annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getLastKnownPositionInFrame()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method
