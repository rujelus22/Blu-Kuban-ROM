.class public Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field public final score:F

.field public final type:I

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->x:F

    .line 99
    iput p2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->y:F

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->score:F

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->type:I

    .line 102
    return-void
.end method

.method public constructor <init>(FFFI)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "score"
    .parameter "type"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->x:F

    .line 106
    iput p2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->y:F

    .line 107
    iput p3, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->score:F

    .line 108
    iput p4, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->type:I

    .line 109
    return-void
.end method


# virtual methods
.method delta(Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;)Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;
    .registers 6
    .parameter "other"

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;

    iget v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->x:F

    iget v2, p1, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->y:F

    iget v3, p1, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$Feature;-><init>(FF)V

    return-object v0
.end method
