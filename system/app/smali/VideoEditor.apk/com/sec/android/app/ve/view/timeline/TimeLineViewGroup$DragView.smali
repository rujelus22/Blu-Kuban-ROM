.class public interface abstract Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup$DragView;
.super Ljava/lang/Object;
.source "TimeLineViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragView"
.end annotation


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract viewDelete()V
.end method

.method public abstract viewDragging(FFLandroid/graphics/Paint;)V
.end method

.method public abstract viewDropped(FF)V
.end method
