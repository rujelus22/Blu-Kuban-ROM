.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
.super Ljavax/swing/tree/DefaultTreeModel;
.source "CategoryExplorerModel.java"


# instance fields
.field protected _event:Ljava/awt/event/ActionEvent;

.field protected _listener:Ljava/awt/event/ActionListener;

.field protected _renderFatal:Z


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .registers 5
    .parameter "node"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;-><init>(Ljavax/swing/tree/TreeNode;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_renderFatal:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    .line 51
    new-instance v0, Ljava/awt/event/ActionEvent;

    const/16 v1, 0x3e9

    const-string v2, "Nodes Selection changed"

    invoke-direct {v0, p0, v1, v2}, Ljava/awt/event/ActionEvent;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_event:Ljava/awt/event/ActionEvent;

    .line 65
    return-void
.end method


# virtual methods
.method public declared-synchronized addActionListener(Ljava/awt/event/ActionListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->add(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 280
    monitor-exit p0

    return-void

    .line 279
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .registers 13
    .parameter "path"

    .prologue
    .line 189
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 190
    .local v8, root:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v6, v8

    .line 192
    .local v6, parent:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v10

    if-lt v3, v10, :cond_f

    .line 231
    return-object v6

    .line 193
    :cond_f
    invoke-virtual {p1, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v2

    .line 196
    .local v2, element:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    .line 198
    .local v1, children:Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 199
    .local v0, categoryAlreadyExists:Z
    :cond_18
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_37

    .line 212
    :goto_1e
    if-nez v0, :cond_34

    .line 214
    new-instance v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;-><init>(Ljava/lang/String;)V

    .line 222
    .local v4, newNode:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->getChildCount()I

    move-result v10

    invoke-virtual {p0, v4, v6, v10}, Ljavax/swing/tree/DefaultTreeModel;->insertNodeInto(Ljavax/swing/tree/MutableTreeNode;Ljavax/swing/tree/MutableTreeNode;I)V

    .line 223
    invoke-virtual {p0, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->refresh(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    .line 226
    move-object v6, v4

    .line 192
    .end local v4           #newNode:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 200
    :cond_37
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 201
    .local v5, node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 203
    .local v9, title:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, pathLC:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 205
    const/4 v0, 0x1

    .line 207
    move-object v6, v5

    .line 208
    goto :goto_1e
.end method

.method public addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)V
    .registers 10
    .parameter "lr"

    .prologue
    const/4 v7, 0x1

    .line 71
    new-instance v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 72
    .local v5, path:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    invoke-virtual {p0, v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addCategory(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 73
    invoke-virtual {p0, v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v2

    .line 74
    .local v2, node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->addRecord()V

    .line 75
    iget-boolean v6, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_renderFatal:Z

    if-eqz v6, :cond_2e

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogRecord;->isFatal()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 76
    invoke-virtual {p0, v2}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v3

    .line 77
    .local v3, nodes:[Ljavax/swing/tree/TreeNode;
    array-length v1, v3

    .line 82
    .local v1, len:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_24
    add-int/lit8 v6, v1, -0x1

    if-lt v0, v6, :cond_2f

    .line 87
    invoke-virtual {v2, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setHasFatalRecords(Z)V

    .line 88
    invoke-virtual {p0, v2}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 90
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v3           #nodes:[Ljavax/swing/tree/TreeNode;
    :cond_2e
    return-void

    .line 83
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v3       #nodes:[Ljavax/swing/tree/TreeNode;
    :cond_2f
    aget-object v4, v3, v0

    check-cast v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 84
    .local v4, parent:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v4, v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setHasFatalChildren(Z)V

    .line 85
    invoke-virtual {p0, v4}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method public getCategoryNode(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .registers 4
    .parameter "category"

    .prologue
    .line 97
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;

    invoke-direct {v0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, path:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    return-object v1
.end method

.method public getCategoryNode(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .registers 12
    .parameter "path"

    .prologue
    .line 105
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 106
    .local v7, root:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v5, v7

    .line 108
    .local v5, parent:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v9

    if-lt v3, v9, :cond_10

    move-object v9, v5

    .line 133
    :goto_f
    return-object v9

    .line 109
    :cond_10
    invoke-virtual {p1, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v2

    .line 112
    .local v2, element:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v5}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v1

    .line 114
    .local v1, children:Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 115
    .local v0, categoryAlreadyExists:Z
    :cond_19
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_23

    .line 128
    :goto_1f
    if-nez v0, :cond_42

    .line 129
    const/4 v9, 0x0

    goto :goto_f

    .line 116
    :cond_23
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 117
    .local v4, node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, pathLC:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 121
    const/4 v0, 0x1

    .line 123
    move-object v5, v4

    .line 124
    goto :goto_1f

    .line 108
    .end local v4           #node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v6           #pathLC:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .registers 2

    .prologue
    .line 93
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    return-object v0
.end method

.method public getTreePathToRoot(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;
    .registers 4
    .parameter "node"

    .prologue
    .line 303
    if-nez p1, :cond_4

    .line 304
    const/4 v0, 0x0

    .line 306
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljavax/swing/tree/TreePath;

    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public isCategoryPathActive(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;)Z
    .registers 13
    .parameter "path"

    .prologue
    .line 141
    invoke-virtual {p0}, Ljavax/swing/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 142
    .local v8, root:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    move-object v6, v8

    .line 143
    .local v6, parent:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v0, 0x0

    .line 145
    .local v0, active:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_9
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v10

    if-lt v4, v10, :cond_11

    move v10, v0

    .line 177
    :goto_10
    return v10

    .line 146
    :cond_11
    invoke-virtual {p1, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v3

    .line 149
    .local v3, element:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    invoke-virtual {v6}, Ljavax/swing/tree/DefaultMutableTreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    .line 151
    .local v2, children:Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 152
    .local v1, categoryAlreadyExists:Z
    const/4 v0, 0x0

    .line 154
    :cond_1b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_27

    .line 172
    :cond_21
    :goto_21
    if-eqz v0, :cond_25

    if-nez v1, :cond_4d

    .line 173
    :cond_25
    const/4 v10, 0x0

    goto :goto_10

    .line 155
    :cond_27
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 156
    .local v5, node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v5}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, title:Ljava/lang/String;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, pathLC:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 160
    const/4 v1, 0x1

    .line 162
    move-object v6, v5

    .line 164
    invoke-virtual {v6}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v10

    if-eqz v10, :cond_21

    .line 165
    const/4 v0, 0x1

    goto :goto_21

    .line 145
    .end local v5           #node:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .end local v7           #pathLC:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method protected notifyActionListeners()V
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    if-eqz v0, :cond_b

    .line 314
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_event:Ljava/awt/event/ActionEvent;

    invoke-interface {v0, v1}, Ljava/awt/event/ActionListener;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 316
    :cond_b
    return-void
.end method

.method protected refresh(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .registers 3
    .parameter "node"

    .prologue
    .line 322
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel$1;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public declared-synchronized removeActionListener(Ljava/awt/event/ActionListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;

    invoke-static {v0, p1}, Ljava/awt/AWTEventMulticaster;->remove(Ljava/awt/event/ActionListener;Ljava/awt/event/ActionListener;)Ljava/awt/event/ActionListener;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->_listener:Ljava/awt/event/ActionListener;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 284
    monitor-exit p0

    return-void

    .line 283
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetAllNodeCounts()V
    .registers 4

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/tree/DefaultMutableTreeNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 289
    .local v1, nodes:Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_f

    .line 294
    return-void

    .line 290
    :cond_f
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 291
    .local v0, current:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->resetNumberOfContainedRecords()V

    .line 292
    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_8
.end method

.method public setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .registers 6
    .parameter "node"
    .parameter "selected"

    .prologue
    .line 247
    invoke-virtual {p1}, Ljavax/swing/tree/DefaultMutableTreeNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 249
    .local v1, descendants:Ljava/util/Enumeration;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_e

    .line 257
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->notifyActionListeners()V

    .line 258
    return-void

    .line 250
    :cond_e
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 252
    .local v0, current:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v2

    if-eq v2, p2, :cond_4

    .line 253
    invoke-virtual {v0, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 254
    invoke-virtual {p0, v0}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    goto :goto_4
.end method

.method public setParentSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .registers 8
    .parameter "node"
    .parameter "selected"

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Ljavax/swing/tree/DefaultTreeModel;->getPathToRoot(Ljavax/swing/tree/TreeNode;)[Ljavax/swing/tree/TreeNode;

    move-result-object v2

    .line 262
    .local v2, nodes:[Ljavax/swing/tree/TreeNode;
    array-length v1, v2

    .line 267
    .local v1, len:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_6
    if-lt v0, v1, :cond_c

    .line 274
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->notifyActionListeners()V

    .line 275
    return-void

    .line 268
    :cond_c
    aget-object v3, v2, v0

    check-cast v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 269
    .local v3, parent:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v4

    if-eq v4, p2, :cond_1c

    .line 270
    invoke-virtual {v3, p2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->setSelected(Z)V

    .line 271
    invoke-virtual {p0, v3}, Ljavax/swing/tree/DefaultTreeModel;->nodeChanged(Ljavax/swing/tree/TreeNode;)V

    .line 267
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public update(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V
    .registers 4
    .parameter "node"
    .parameter "selected"

    .prologue
    .line 235
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v0

    if-ne v0, p2, :cond_7

    .line 244
    :goto_6
    return-void

    .line 239
    :cond_7
    if-eqz p2, :cond_e

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setParentSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    goto :goto_6

    .line 242
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->setDescendantSelection(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;Z)V

    goto :goto_6
.end method
