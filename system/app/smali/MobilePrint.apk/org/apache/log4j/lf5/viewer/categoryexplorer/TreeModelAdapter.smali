.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/TreeModelAdapter;
.super Ljava/lang/Object;
.source "TreeModelAdapter.java"

# interfaces
.implements Ljavax/swing/event/TreeModelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public treeNodesChanged(Ljavax/swing/event/TreeModelEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 51
    return-void
.end method

.method public treeNodesInserted(Ljavax/swing/event/TreeModelEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 54
    return-void
.end method

.method public treeNodesRemoved(Ljavax/swing/event/TreeModelEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 57
    return-void
.end method

.method public treeStructureChanged(Ljavax/swing/event/TreeModelEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 60
    return-void
.end method
