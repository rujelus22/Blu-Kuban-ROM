.class public Lcom/google/android/apps/translate/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

# interfaces
.implements Lcom/google/android/apps/translate/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Lcom/google/android/apps/translate/ScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/google/android/apps/translate/ScaleGestureDetector;)V
    .registers 2
    .parameter "detector"

    .prologue
    .line 129
    return-void
.end method
