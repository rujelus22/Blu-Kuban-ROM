.class public interface abstract Lcom/google/android/apps/unveil/textinput/SmudgeView$Listener;
.super Ljava/lang/Object;
.source "SmudgeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/SmudgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onSmudgeComplete(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;)V
.end method

.method public abstract onSmudgeProgress(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;Landroid/graphics/Rect;)V
.end method

.method public abstract onSmudgeStarted()V
.end method

.method public abstract onZoom()V
.end method
