.class public interface abstract Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;
.super Ljava/lang/Object;
.source "AnnotationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/AnnotationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnnotationEventListener"
.end annotation


# virtual methods
.method public abstract onNewResultAppeared(Lcom/google/android/apps/unveil/results/BasicAnnotation;Z)V
.end method

.method public abstract onResultUpdated(Lcom/google/android/apps/unveil/results/BasicAnnotation;Z)V
.end method

.method public abstract onTrackingStarted(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
.end method

.method public abstract onTrackingStopped(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
.end method
