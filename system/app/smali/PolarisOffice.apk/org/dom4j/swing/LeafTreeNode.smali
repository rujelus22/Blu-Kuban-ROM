.class public Lorg/dom4j/swing/LeafTreeNode;
.super Ljava/lang/Object;
.source "LeafTreeNode.java"

# interfaces
.implements Ljavax/swing/tree/TreeNode;


# static fields
.field protected static final EMPTY_ENUMERATION:Ljava/util/Enumeration;


# instance fields
.field private parent:Ljavax/swing/tree/TreeNode;

.field protected xmlNode:Lorg/dom4j/Node;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lorg/dom4j/swing/LeafTreeNode$1;

    invoke-direct {v0}, Lorg/dom4j/swing/LeafTreeNode$1;-><init>()V

    sput-object v0, Lorg/dom4j/swing/LeafTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljavax/swing/tree/TreeNode;Lorg/dom4j/Node;)V
    .registers 3
    .parameter "parent"
    .parameter "xmlNode"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/dom4j/swing/LeafTreeNode;->parent:Ljavax/swing/tree/TreeNode;

    .line 52
    iput-object p2, p0, Lorg/dom4j/swing/LeafTreeNode;->xmlNode:Lorg/dom4j/Node;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Node;)V
    .registers 2
    .parameter "xmlNode"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/dom4j/swing/LeafTreeNode;->xmlNode:Lorg/dom4j/Node;

    .line 48
    return-void
.end method


# virtual methods
.method public children()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lorg/dom4j/swing/LeafTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    return-object v0
.end method

.method public getAllowsChildren()Z
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getChildAt(I)Ljavax/swing/tree/TreeNode;
    .registers 3
    .parameter "childIndex"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getIndex(Ljavax/swing/tree/TreeNode;)I
    .registers 3
    .parameter "node"

    .prologue
    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method public getParent()Ljavax/swing/tree/TreeNode;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/dom4j/swing/LeafTreeNode;->parent:Ljavax/swing/tree/TreeNode;

    return-object v0
.end method

.method public getXmlNode()Lorg/dom4j/Node;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/dom4j/swing/LeafTreeNode;->xmlNode:Lorg/dom4j/Node;

    return-object v0
.end method

.method public isLeaf()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public setParent(Lorg/dom4j/swing/LeafTreeNode;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/dom4j/swing/LeafTreeNode;->parent:Ljavax/swing/tree/TreeNode;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    iget-object v1, p0, Lorg/dom4j/swing/LeafTreeNode;->xmlNode:Lorg/dom4j/Node;

    invoke-interface {v1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const-string v1, ""

    goto :goto_c
.end method
