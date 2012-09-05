.class public interface abstract Lcom/swype/android/compat/MultitouchHandler$MultitouchFilter;
.super Ljava/lang/Object;
.source "MultitouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/compat/MultitouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "MultitouchFilter"
.end annotation


# virtual methods
.method public abstract filterCurrentMT(Landroid/view/MotionEvent;IILcom/swype/android/widget/MultitouchEventReceiver;)V
.end method

.method public abstract filterHistoricalMT(Landroid/view/MotionEvent;IIILcom/swype/android/widget/MultitouchEventReceiver;)V
.end method
