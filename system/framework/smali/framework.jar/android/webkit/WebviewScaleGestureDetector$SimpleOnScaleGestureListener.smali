.class public Landroid/webkit/WebviewScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebviewScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .registers 2
    .parameter "detector"

    .prologue
    .line 61
    return-void
.end method
