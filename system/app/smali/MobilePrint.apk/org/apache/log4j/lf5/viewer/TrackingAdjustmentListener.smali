.class public Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;
.super Ljava/lang/Object;
.source "TrackingAdjustmentListener.java"

# interfaces
.implements Ljava/awt/event/AdjustmentListener;


# instance fields
.field protected _lastMaximum:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    .line 36
    return-void
.end method


# virtual methods
.method public adjustmentValueChanged(Ljava/awt/event/AdjustmentEvent;)V
    .registers 7
    .parameter "e"

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/awt/event/AdjustmentEvent;->getAdjustable()Ljava/awt/Adjustable;

    move-result-object v0

    .line 61
    .local v0, bar:Ljava/awt/Adjustable;
    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v2

    .line 62
    .local v2, currentMaximum:I
    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v3

    iget v4, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    if-ne v3, v4, :cond_11

    .line 71
    :goto_10
    return-void

    .line 65
    :cond_11
    invoke-interface {v0}, Ljava/awt/Adjustable;->getValue()I

    move-result v3

    invoke-interface {v0}, Ljava/awt/Adjustable;->getVisibleAmount()I

    move-result v4

    add-int v1, v3, v4

    .line 67
    .local v1, bottom:I
    invoke-interface {v0}, Ljava/awt/Adjustable;->getUnitIncrement()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    if-lt v3, v4, :cond_2b

    .line 68
    invoke-interface {v0}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/awt/Adjustable;->setValue(I)V

    .line 70
    :cond_2b
    iput v2, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    goto :goto_10
.end method
