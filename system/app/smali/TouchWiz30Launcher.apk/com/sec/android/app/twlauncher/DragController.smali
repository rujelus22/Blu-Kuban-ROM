.class public interface abstract Lcom/sec/android/app/twlauncher/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DragController$DragListener;,
        Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;
    }
.end annotation


# virtual methods
.method public abstract centerViewToLastTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;
.end method

.method public abstract setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V
.end method

.method public abstract startAnimation(Landroid/view/View;FFFFFFILcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V
.end method

.method public abstract startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V
.end method

.method public abstract startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
.end method
