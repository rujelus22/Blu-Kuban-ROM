.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;
.super Ljavax/swing/tree/DefaultTreeCellEditor;
.source "CategoryImmediateEditor.java"


# instance fields
.field protected editingIcon:Ljavax/swing/Icon;

.field private renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;


# direct methods
.method public constructor <init>(Ljavax/swing/JTree;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V
    .registers 5
    .parameter "tree"
    .parameter "renderer"
    .parameter "editor"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/tree/DefaultTreeCellEditor;-><init>(Ljavax/swing/JTree;Ljavax/swing/tree/DefaultTreeCellRenderer;Ljavax/swing/tree/TreeCellEditor;)V

    .line 43
    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->editingIcon:Ljavax/swing/Icon;

    .line 56
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    .line 57
    invoke-virtual {p2, v0}, Ljavax/swing/JLabel;->setIcon(Ljavax/swing/Icon;)V

    .line 58
    invoke-virtual {p2, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    .line 59
    invoke-virtual {p2, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    .line 60
    invoke-virtual {p2, v0}, Ljavax/swing/tree/DefaultTreeCellRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    .line 62
    iput-object v0, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->editingIcon:Ljavax/swing/Icon;

    .line 63
    return-void
.end method


# virtual methods
.method protected canEditImmediately(Ljava/util/EventObject;)Z
    .registers 5
    .parameter "e"

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, rv:Z
    instance-of v2, p1, Ljava/awt/event/MouseEvent;

    if-eqz v2, :cond_c

    move-object v0, p1

    .line 116
    check-cast v0, Ljava/awt/event/MouseEvent;

    .line 117
    .local v0, me:Ljava/awt/event/MouseEvent;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->inCheckBoxHitRegion(Ljava/awt/event/MouseEvent;)Z

    move-result v1

    .line 120
    .end local v0           #me:Ljava/awt/event/MouseEvent;
    :cond_c
    return v1
.end method

.method protected determineOffset(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)V
    .registers 8
    .parameter "tree"
    .parameter "value"
    .parameter "isSelected"
    .parameter "expanded"
    .parameter "leaf"
    .parameter "row"

    .prologue
    .line 127
    const/4 v0, 0x0

    iput v0, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->offset:I

    .line 128
    return-void
.end method

.method public inCheckBoxHitRegion(Ljava/awt/event/MouseEvent;)Z
    .registers 10
    .parameter "e"

    .prologue
    .line 84
    iget-object v5, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v6

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v3

    .line 86
    .local v3, path:Ljavax/swing/tree/TreePath;
    if-nez v3, :cond_12

    .line 87
    const/4 v5, 0x0

    .line 105
    :goto_11
    return v5

    .line 89
    :cond_12
    invoke-virtual {v3}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 90
    .local v2, node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v4, 0x0

    .line 96
    .local v4, rv:Z
    iget-object v5, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->tree:Ljavax/swing/JTree;

    iget v6, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->lastRow:I

    invoke-virtual {v5, v6}, Ljavax/swing/JTree;->getRowBounds(I)Ljava/awt/Rectangle;

    move-result-object v0

    .line 97
    .local v0, bounds:Ljava/awt/Rectangle;
    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->getCheckBoxOffset()Ljava/awt/Dimension;

    move-result-object v1

    .line 100
    .local v1, checkBoxOffset:Ljava/awt/Dimension;
    iget v5, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->offset:I

    iget v6, v1, Ljava/awt/Dimension;->width:I

    add-int/2addr v5, v6

    iget v6, v1, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, v5, v6}, Ljava/awt/Rectangle;->translate(II)V

    .line 103
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getPoint()Ljava/awt/Point;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/awt/Rectangle;->contains(Ljava/awt/Point;)Z

    move-result v4

    .line 105
    const/4 v5, 0x1

    goto :goto_11
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .registers 9
    .parameter "e"

    .prologue
    .line 69
    const/4 v3, 0x0

    .line 71
    .local v3, rv:Z
    instance-of v4, p1, Ljava/awt/event/MouseEvent;

    if-eqz v4, :cond_20

    move-object v0, p1

    .line 72
    check-cast v0, Ljava/awt/event/MouseEvent;

    .line 73
    .local v0, me:Ljava/awt/event/MouseEvent;
    iget-object v4, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->tree:Ljavax/swing/JTree;

    invoke-virtual {v0}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v5

    invoke-virtual {v0}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v2

    .line 75
    .local v2, path:Ljavax/swing/tree/TreePath;
    invoke-virtual {v2}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 78
    .local v1, node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v1}, Ljavax/swing/tree/DefaultMutableTreeNode;->isLeaf()Z

    move-result v3

    .line 80
    .end local v0           #me:Ljava/awt/event/MouseEvent;
    .end local v1           #node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v2           #path:Ljavax/swing/tree/TreePath;
    :cond_20
    return v3
.end method
