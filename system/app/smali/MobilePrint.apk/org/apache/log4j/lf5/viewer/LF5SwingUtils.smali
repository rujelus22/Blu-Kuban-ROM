.class public Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;
.super Ljava/lang/Object;
.source "LF5SwingUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static contains(ILjavax/swing/table/TableModel;)Z
    .registers 4
    .parameter "row"
    .parameter "model"

    .prologue
    const/4 v0, 0x0

    .line 102
    if-nez p1, :cond_4

    .line 111
    :cond_3
    :goto_3
    return v0

    .line 105
    :cond_4
    if-ltz p0, :cond_3

    .line 108
    invoke-interface {p1}, Ljavax/swing/table/TableModel;->getRowCount()I

    move-result v1

    if-ge p0, v1, :cond_3

    .line 111
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static makeScrollBarTrack(Ljava/awt/Adjustable;)V
    .registers 2
    .parameter "scrollBar"

    .prologue
    .line 80
    if-nez p0, :cond_3

    .line 84
    :goto_2
    return-void

    .line 83
    :cond_3
    new-instance v0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;-><init>()V

    invoke-interface {p0, v0}, Ljava/awt/Adjustable;->addAdjustmentListener(Ljava/awt/event/AdjustmentListener;)V

    goto :goto_2
.end method

.method public static makeVerticalScrollBarTrack(Ljavax/swing/JScrollPane;)V
    .registers 2
    .parameter "pane"

    .prologue
    .line 92
    if-nez p0, :cond_3

    .line 96
    :goto_2
    return-void

    .line 95
    :cond_3
    invoke-virtual {p0}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->makeScrollBarTrack(Ljava/awt/Adjustable;)V

    goto :goto_2
.end method

.method protected static moveAdjustable(ILjava/awt/Adjustable;)V
    .registers 2
    .parameter "location"
    .parameter "scrollBar"

    .prologue
    .line 122
    if-nez p1, :cond_3

    .line 126
    :goto_2
    return-void

    .line 125
    :cond_3
    invoke-interface {p1, p0}, Ljava/awt/Adjustable;->setValue(I)V

    goto :goto_2
.end method

.method protected static repaintLater(Ljavax/swing/JComponent;)V
    .registers 2
    .parameter "component"

    .prologue
    .line 133
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;-><init>(Ljavax/swing/JComponent;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public static selectRow(ILjavax/swing/JTable;Ljavax/swing/JScrollPane;)V
    .registers 5
    .parameter "row"
    .parameter "table"
    .parameter "pane"

    .prologue
    .line 61
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 73
    :cond_4
    :goto_4
    return-void

    .line 64
    :cond_5
    invoke-virtual {p1}, Ljavax/swing/JTable;->getModel()Ljavax/swing/table/TableModel;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->contains(ILjavax/swing/table/TableModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {p1}, Ljavax/swing/JTable;->getRowHeight()I

    move-result v0

    mul-int/2addr v0, p0

    invoke-virtual {p2}, Ljavax/swing/JScrollPane;->getVerticalScrollBar()Ljavax/swing/JScrollBar;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->moveAdjustable(ILjava/awt/Adjustable;)V

    .line 68
    invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->selectRow(ILjavax/swing/ListSelectionModel;)V

    .line 72
    invoke-static {p1}, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils;->repaintLater(Ljavax/swing/JComponent;)V

    goto :goto_4
.end method

.method protected static selectRow(ILjavax/swing/ListSelectionModel;)V
    .registers 2
    .parameter "row"
    .parameter "model"

    .prologue
    .line 115
    if-nez p1, :cond_3

    .line 119
    :goto_2
    return-void

    .line 118
    :cond_3
    invoke-interface {p1, p0, p0}, Ljavax/swing/ListSelectionModel;->setSelectionInterval(II)V

    goto :goto_2
.end method
