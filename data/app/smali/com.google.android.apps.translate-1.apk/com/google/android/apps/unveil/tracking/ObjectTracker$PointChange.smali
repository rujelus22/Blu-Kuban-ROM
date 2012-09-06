.class public Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointChange"
.end annotation


# instance fields
.field public final featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

.field public final featureB:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

.field pointDelta:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

.field private final wasFound:Z


# direct methods
.method public constructor <init>(FFFFFIZ)V
    .registers 9
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "score"
    .parameter "type"
    .parameter "wasFound"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean p7, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->wasFound:Z

    .line 128
    new-instance v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    invoke-direct {v0, p1, p2, p5, p6}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;-><init>(FFFI)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    .line 129
    new-instance v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    invoke-direct {v0, p3, p4}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureB:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    .line 130
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->wasFound:Z

    return v0
.end method


# virtual methods
.method public getDelta()Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->pointDelta:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    if-nez v0, :cond_e

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureB:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->featureA:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->delta(Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;)Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->pointDelta:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    .line 136
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$PointChange;->pointDelta:Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    return-object v0
.end method
