.class public Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.source "DOM2DTM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;
    }
.end annotation


# static fields
.field static final JJK_DEBUG:Z = false

.field static final JJK_NEWCODE:Z = true

.field static final NAMESPACE_DECL_NS:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field private m_last_kid:I

.field private m_last_parent:I

.field protected m_nodes:Ljava/util/Vector;

.field private transient m_nodesAreProcessed:Z

.field private transient m_pos:Lorg/w3c/dom/Node;

.field m_processedFirstElement:Z

.field private transient m_root:Lorg/w3c/dom/Node;

.field m_walker:Lorg/apache/xml/utils/TreeWalker;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 16
    .parameter "mgr"
    .parameter "domSource"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 123
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 79
    iput v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    .line 82
    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 91
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    .line 104
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    .line 1702
    new-instance v5, Lorg/apache/xml/utils/TreeWalker;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    .line 127
    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    iput-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 129
    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    iput v8, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    .line 130
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    iget v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    iget v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    iput v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 143
    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    if-ne v5, v6, :cond_64

    .line 145
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 146
    .local v1, attrs:Lorg/w3c/dom/NamedNodeMap;
    if-nez v1, :cond_5a

    move v2, v4

    .line 147
    .local v2, attrsize:I
    :goto_44
    if-lez v2, :cond_64

    .line 149
    const/4 v0, -0x1

    .line 150
    .local v0, attrIndex:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_48
    if-ge v3, v2, :cond_5f

    .line 155
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v0, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v0

    .line 156
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 146
    .end local v0           #attrIndex:I
    .end local v2           #attrsize:I
    .end local v3           #i:I
    :cond_5a
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    goto :goto_44

    .line 160
    .restart local v0       #attrIndex:I
    .restart local v2       #attrsize:I
    .restart local v3       #i:I
    :cond_5f
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 167
    .end local v0           #attrIndex:I
    .end local v1           #attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v2           #attrsize:I
    .end local v3           #i:I
    :cond_64
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    .line 168
    return-void
.end method

.method protected static dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V
    .registers 8
    .parameter "node"
    .parameter "ch"
    .parameter "depth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1661
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_36

    .line 1700
    .end local p1
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1667
    .restart local p1
    :pswitch_8
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, child:Lorg/w3c/dom/Node;
    :goto_c
    if-eqz v0, :cond_7

    .line 1670
    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, p1, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    .line 1668
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_c

    .line 1676
    .end local v0           #child:Lorg/w3c/dom/Node;
    :pswitch_18
    if-nez p2, :cond_7

    .line 1683
    :pswitch_1a
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1684
    .local v1, str:Ljava/lang/String;
    instance-of v2, p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    if-eqz v2, :cond_28

    .line 1686
    check-cast p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;

    .end local p1
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM$CharacterNodeHandler;->characters(Lorg/w3c/dom/Node;)V

    goto :goto_7

    .line 1690
    .restart local p1
    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_7

    .line 1661
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_7
        :pswitch_7
        :pswitch_18
        :pswitch_18
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getHandleFromNode(Lorg/w3c/dom/Node;)I
    .registers 6
    .parameter "node"

    .prologue
    .line 666
    if-eqz p1, :cond_29

    .line 668
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 670
    .local v2, len:I
    const/4 v0, 0x0

    .line 673
    .local v0, i:I
    :cond_9
    :goto_9
    if-ge v0, v2, :cond_1b

    .line 675
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_18

    .line 676
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v3

    .line 687
    .end local v0           #i:I
    .end local v2           #len:I
    :goto_17
    return v3

    .line 673
    .restart local v0       #i:I
    .restart local v2       #len:I
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 679
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result v1

    .line 681
    .local v1, isMore:Z
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 684
    if-nez v1, :cond_9

    if-lt v0, v2, :cond_9

    .line 687
    .end local v0           #i:I
    .end local v1           #isMore:Z
    .end local v2           #len:I
    :cond_29
    const/4 v3, -0x1

    goto :goto_17
.end method

.method protected static getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 4
    .parameter "node"
    .parameter "buf"

    .prologue
    .line 919
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 944
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 925
    :pswitch_8
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, child:Lorg/w3c/dom/Node;
    :goto_c
    if-eqz v0, :cond_7

    .line 928
    invoke-static {v0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 926
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_c

    .line 935
    .end local v0           #child:Lorg/w3c/dom/Node;
    :pswitch_16
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    .line 919
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static isSpace(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1591
    invoke-static {p0}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(C)Z

    move-result v0

    return v0
.end method

.method private logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "n"

    .prologue
    const/4 v3, 0x5

    .line 1190
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1191
    .local v1, p:Lorg/w3c/dom/Node;
    if-nez v1, :cond_19

    .line 1194
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 1195
    :goto_b
    if-eqz p1, :cond_19

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v3, v2, :cond_19

    .line 1198
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1199
    if-eqz v1, :cond_2d

    .line 1203
    :cond_19
    move-object p1, v1

    .line 1204
    :goto_1a
    if-eqz p1, :cond_37

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v3, v2, :cond_37

    .line 1207
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1208
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1a

    .line 1196
    :cond_2d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_b

    .line 1210
    :cond_32
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1a

    .line 1212
    :cond_37
    if-eqz p1, :cond_44

    .line 1215
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 1216
    .local v0, ntype:I
    const/4 v2, 0x3

    if-eq v2, v0, :cond_44

    const/4 v2, 0x4

    if-eq v2, v0, :cond_44

    .line 1217
    const/4 p1, 0x0

    .line 1219
    .end local v0           #ntype:I
    :cond_44
    return-object p1
.end method


# virtual methods
.method protected addNode(Lorg/w3c/dom/Node;III)I
    .registers 18
    .parameter "node"
    .parameter "parentIndex"
    .parameter "previousSibling"
    .parameter "forceNodeType"

    .prologue
    .line 185
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v8

    .line 188
    .local v8, nodeIndex:I
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v11

    ushr-int/lit8 v12, v8, 0x10

    if-ne v11, v12, :cond_25

    .line 192
    :try_start_10
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-nez v11, :cond_c9

    .line 193
    new-instance v11, Ljava/lang/ClassCastException;

    invoke-direct {v11}, Ljava/lang/ClassCastException;-><init>()V

    throw v11
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_1a} :catch_1a

    .line 201
    :catch_1a
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v11, "ER_NO_DTMIDS_AVAIL"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->error(Ljava/lang/String;)V

    .line 210
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_25
    :goto_25
    iget v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    .line 214
    const/4 v11, -0x1

    move/from16 v0, p4

    if-ne v11, v0, :cond_dd

    .line 215
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    .line 236
    .local v10, type:I
    :goto_34
    const/4 v11, 0x2

    if-ne v11, v10, :cond_4d

    .line 238
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, name:Ljava/lang/String;
    const-string v11, "xmlns:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4b

    const-string v11, "xmlns"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 242
    :cond_4b
    const/16 v10, 0xd

    .line 246
    .end local v7           #name:Ljava/lang/String;
    :cond_4d
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v11, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 248
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v12, -0x2

    invoke-virtual {v11, v12, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 249
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v12, -0x2

    invoke-virtual {v11, v12, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 250
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move/from16 v0, p3

    invoke-virtual {v11, v0, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 251
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, p2, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 253
    const/4 v11, -0x1

    if-eq v11, p2, :cond_82

    const/4 v11, 0x2

    if-eq v10, v11, :cond_82

    const/16 v11, 0xd

    if-eq v10, v11, :cond_82

    .line 258
    const/4 v11, -0x2

    iget-object v12, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v12, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v12

    if-ne v11, v12, :cond_82

    .line 259
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, v8, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 262
    :cond_82
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, nsURI:Ljava/lang/String;
    const/4 v11, 0x7

    if-ne v10, v11, :cond_e1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, localName:Ljava/lang/String;
    :goto_8d
    const/4 v11, 0x1

    if-eq v10, v11, :cond_93

    const/4 v11, 0x2

    if-ne v10, v11, :cond_99

    :cond_93
    if-nez v5, :cond_99

    .line 274
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 276
    :cond_99
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 286
    .local v2, exnt:Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a7

    const/4 v11, 0x1

    if-eq v10, v11, :cond_a7

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a7

    .line 292
    :cond_a7
    if-eqz v5, :cond_e6

    invoke-virtual {v2, v9, v5, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 296
    .local v3, expandedNameID:I
    :goto_ad
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v11, v3, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 298
    invoke-virtual {p0, v3, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->indexNode(II)V

    .line 300
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v11, v0, :cond_c1

    .line 301
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move/from16 v0, p3

    invoke-virtual {v11, v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 305
    :cond_c1
    const/16 v11, 0xd

    if-ne v10, v11, :cond_c8

    .line 306
    invoke-virtual {p0, p2, v8}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->declareNamespaceInContext(II)V

    .line 308
    :cond_c8
    return v8

    .line 196
    .end local v2           #exnt:Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .end local v3           #expandedNameID:I
    .end local v5           #localName:Ljava/lang/String;
    .end local v9           #nsURI:Ljava/lang/String;
    .end local v10           #type:I
    :cond_c9
    :try_start_c9
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    check-cast v6, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 197
    .local v6, mgrD:Lorg/apache/xml/dtm/ref/DTMManagerDefault;
    invoke-virtual {v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v4

    .line 198
    .local v4, id:I
    invoke-virtual {v6, p0, v4, v8}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    .line 199
    iget-object v11, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v12, v4, 0x10

    invoke-virtual {v11, v12}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V
    :try_end_db
    .catch Ljava/lang/ClassCastException; {:try_start_c9 .. :try_end_db} :catch_1a

    goto/16 :goto_25

    .line 217
    .end local v4           #id:I
    .end local v6           #mgrD:Lorg/apache/xml/dtm/ref/DTMManagerDefault;
    :cond_dd
    move/from16 v10, p4

    .restart local v10       #type:I
    goto/16 :goto_34

    .line 267
    .restart local v9       #nsURI:Ljava/lang/String;
    :cond_e1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    goto :goto_8d

    .line 292
    .restart local v2       #exnt:Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .restart local v5       #localName:Ljava/lang/String;
    :cond_e6
    invoke-virtual {v2, v10}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v3

    goto :goto_ad
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .registers 9
    .parameter "nodeHandle"
    .parameter "ch"
    .parameter "normalize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1612
    if-eqz p3, :cond_10

    .line 1614
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    .line 1615
    .local v1, str:Lorg/apache/xml/utils/XMLString;
    invoke-interface {v1, v3, v3, v4}, Lorg/apache/xml/utils/XMLString;->fixWhiteSpace(ZZZ)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    .line 1616
    invoke-interface {v1, p2}, Lorg/apache/xml/utils/XMLString;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    .line 1633
    .end local v1           #str:Lorg/apache/xml/utils/XMLString;
    :cond_f
    return-void

    .line 1620
    :cond_10
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v2

    .line 1621
    .local v2, type:I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1622
    .local v0, node:Lorg/w3c/dom/Node;
    invoke-static {v0, p2, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    .line 1625
    const/4 v3, 0x3

    if-eq v3, v2, :cond_21

    const/4 v3, 0x4

    if-ne v3, v2, :cond_f

    .line 1627
    :cond_21
    :goto_21
    invoke-direct {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1629
    invoke-static {v0, p2, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->dispatchNodeData(Lorg/w3c/dom/Node;Lorg/xml/sax/ContentHandler;I)V

    goto :goto_21
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .registers 8
    .parameter "nodeHandle"
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1715
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_walker:Lorg/apache/xml/utils/TreeWalker;

    .line 1716
    .local v2, treeWalker:Lorg/apache/xml/utils/TreeWalker;
    invoke-virtual {v2}, Lorg/apache/xml/utils/TreeWalker;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    .line 1718
    .local v1, prevCH:Lorg/xml/sax/ContentHandler;
    if-eqz v1, :cond_e

    .line 1720
    new-instance v2, Lorg/apache/xml/utils/TreeWalker;

    .end local v2           #treeWalker:Lorg/apache/xml/utils/TreeWalker;
    invoke-direct {v2, v4}, Lorg/apache/xml/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;)V

    .line 1722
    .restart local v2       #treeWalker:Lorg/apache/xml/utils/TreeWalker;
    :cond_e
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1726
    :try_start_11
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 1727
    .local v0, node:Lorg/w3c/dom/Node;
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/TreeWalker;->traverseFragment(Lorg/w3c/dom/Node;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 1731
    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1733
    return-void

    .line 1731
    .end local v0           #node:Lorg/w3c/dom/Node;
    :catchall_1c
    move-exception v3

    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/TreeWalker;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    throw v3
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "nodeHandle"
    .parameter "namespaceURI"
    .parameter "name"

    .prologue
    const/4 v5, -0x1

    .line 756
    if-nez p2, :cond_5

    .line 757
    const-string p2, ""

    .line 759
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    .line 761
    .local v4, type:I
    const/4 v6, 0x1

    if-ne v6, v4, :cond_41

    .line 765
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 767
    .local v0, identity:I
    :cond_10
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result v0

    if-eq v5, v0, :cond_41

    .line 770
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->_type(I)S

    move-result v4

    .line 779
    const/4 v6, 0x2

    if-eq v4, v6, :cond_21

    const/16 v6, 0xd

    if-ne v4, v6, :cond_41

    .line 781
    :cond_21
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->lookupNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 782
    .local v1, node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 784
    .local v3, nodeuri:Ljava/lang/String;
    if-nez v3, :cond_2d

    .line 785
    const-string v3, ""

    .line 787
    :cond_2d
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, nodelocalname:Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 790
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v5

    .line 800
    .end local v0           #identity:I
    .end local v1           #node:Lorg/w3c/dom/Node;
    .end local v2           #nodelocalname:Ljava/lang/String;
    .end local v3           #nodeuri:Ljava/lang/String;
    :cond_41
    return v5
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 1506
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .prologue
    .line 1545
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .registers 2

    .prologue
    .line 1567
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1310
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1b

    .line 1311
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    .line 1315
    .local v0, doc:Lorg/w3c/dom/Document;
    :goto_e
    if-eqz v0, :cond_22

    .line 1317
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 1319
    .local v1, dtd:Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_22

    .line 1321
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 1325
    .end local v1           #dtd:Lorg/w3c/dom/DocumentType;
    :goto_1a
    return-object v2

    .line 1313
    .end local v0           #doc:Lorg/w3c/dom/Document;
    :cond_1b
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .restart local v0       #doc:Lorg/w3c/dom/Document;
    goto :goto_e

    .line 1325
    :cond_22
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1279
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1b

    .line 1280
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Document;

    .line 1284
    .local v0, doc:Lorg/w3c/dom/Document;
    :goto_e
    if-eqz v0, :cond_22

    .line 1286
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 1288
    .local v1, dtd:Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_22

    .line 1290
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 1294
    .end local v1           #dtd:Lorg/w3c/dom/DocumentType;
    :goto_1a
    return-object v2

    .line 1282
    .end local v0           #doc:Lorg/w3c/dom/Document;
    :cond_1b
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .restart local v0       #doc:Lorg/w3c/dom/Document;
    goto :goto_e

    .line 1294
    :cond_22
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public getElementById(Ljava/lang/String;)I
    .registers 10
    .parameter "elementId"

    .prologue
    const/4 v6, -0x1

    .line 1348
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_37

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v5, Lorg/w3c/dom/Document;

    move-object v0, v5

    .line 1351
    .local v0, doc:Lorg/w3c/dom/Document;
    :goto_10
    if-eqz v0, :cond_3e

    .line 1353
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 1354
    .local v1, elem:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_3e

    .line 1356
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    .line 1358
    .local v2, elemHandle:I
    if-ne v6, v2, :cond_36

    .line 1360
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 1361
    .local v3, identity:I
    :cond_26
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNextNodeIdentity(I)I

    move-result v3

    if-eq v6, v3, :cond_36

    .line 1363
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1364
    .local v4, node:Lorg/w3c/dom/Node;
    if-ne v4, v1, :cond_26

    .line 1366
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    .line 1376
    .end local v1           #elem:Lorg/w3c/dom/Node;
    .end local v2           #elemHandle:I
    .end local v3           #identity:I
    .end local v4           #node:Lorg/w3c/dom/Node;
    :cond_36
    :goto_36
    return v2

    .line 1348
    .end local v0           #doc:Lorg/w3c/dom/Document;
    :cond_37
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_10

    .restart local v0       #doc:Lorg/w3c/dom/Document;
    :cond_3e
    move v2, v6

    .line 1376
    goto :goto_36
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .prologue
    .line 1534
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .prologue
    .line 1556
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandleOfNode(Lorg/w3c/dom/Node;)I
    .registers 6
    .parameter "node"

    .prologue
    const/16 v3, 0x9

    .line 705
    if-eqz p1, :cond_4b

    .line 710
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-eq v1, p1, :cond_2c

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v3, :cond_18

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-eq v1, v2, :cond_2c

    :cond_18
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_4b

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-ne v1, v2, :cond_4b

    .line 722
    :cond_2c
    move-object v0, p1

    .line 723
    .local v0, cursor:Lorg/w3c/dom/Node;
    :goto_2d
    if-eqz v0, :cond_4b

    .line 729
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    if-ne v0, v1, :cond_38

    .line 731
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    .line 736
    .end local v0           #cursor:Lorg/w3c/dom/Node;
    :goto_37
    return v1

    .line 724
    .restart local v0       #cursor:Lorg/w3c/dom/Node;
    :cond_38
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_44

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_43
    goto :goto_2d

    :cond_44
    check-cast v0, Lorg/w3c/dom/Attr;

    .end local v0           #cursor:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_43

    .line 736
    :cond_4b
    const/4 v1, -0x1

    goto :goto_37
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    .prologue
    .line 1522
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 9
    .parameter "nodeHandle"

    .prologue
    .line 1026
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 1027
    .local v0, id:I
    const/4 v5, -0x1

    if-ne v5, v0, :cond_9

    const/4 v2, 0x0

    .line 1046
    :cond_8
    :goto_8
    return-object v2

    .line 1028
    :cond_9
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 1029
    .local v3, newnode:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, newname:Ljava/lang/String;
    if-nez v2, :cond_8

    .line 1033
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 1034
    .local v4, qname:Ljava/lang/String;
    const/16 v5, 0x23

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_27

    .line 1038
    const-string v2, ""

    goto :goto_8

    .line 1042
    :cond_27
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1043
    .local v1, index:I
    if-gez v1, :cond_31

    move-object v2, v4

    :goto_30
    goto :goto_8

    :cond_31
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_30
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 1146
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 1147
    .local v0, id:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    const/4 v2, 0x0

    .line 1149
    :goto_8
    return-object v2

    .line 1148
    :cond_9
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 1149
    .local v1, node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method protected getNextNodeIdentity(I)I
    .registers 3
    .parameter "identity"

    .prologue
    .line 634
    add-int/lit8 p1, p1, 0x1

    .line 636
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_11

    .line 638
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->nextNode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 639
    const/4 p1, -0x1

    .line 642
    :cond_11
    return p1
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 609
    .local v0, identity:I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    return-object v1
.end method

.method public getNodeName(I)Ljava/lang/String;
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 958
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 961
    .local v0, node:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .registers 6
    .parameter "nodeHandle"

    .prologue
    .line 976
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v2

    .line 978
    .local v2, type:S
    sparse-switch v2, :sswitch_data_34

    .line 1008
    const-string v0, ""

    .line 1011
    .local v0, name:Ljava/lang/String;
    :cond_9
    :goto_9
    return-object v0

    .line 982
    .end local v0           #name:Ljava/lang/String;
    :sswitch_a
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 985
    .local v1, node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 986
    .restart local v0       #name:Ljava/lang/String;
    const-string v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 988
    invoke-static {v0}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 990
    :cond_1f
    const-string v3, "xmlns"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 992
    const-string v0, ""

    goto :goto_9

    .line 1001
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #node:Lorg/w3c/dom/Node;
    :sswitch_2a
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1004
    .restart local v1       #node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .restart local v0       #name:Ljava/lang/String;
    goto :goto_9

    .line 978
    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_2a
        0x5 -> :sswitch_2a
        0x7 -> :sswitch_2a
        0xd -> :sswitch_a
    .end sparse-switch
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .registers 9
    .parameter "nodeHandle"

    .prologue
    const/4 v5, -0x1

    .line 1236
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeIdentity(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->_exptype(I)I

    move-result v4

    .line 1237
    .local v4, type:I
    if-eq v5, v4, :cond_1e

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    .line 1239
    :goto_f
    const/4 v5, 0x3

    if-eq v5, v4, :cond_20

    const/4 v5, 0x4

    if-eq v5, v4, :cond_20

    .line 1240
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 1263
    :goto_1d
    return-object v3

    :cond_1e
    move v4, v5

    .line 1237
    goto :goto_f

    .line 1249
    :cond_20
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1250
    .local v2, node:Lorg/w3c/dom/Node;
    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1251
    .local v1, n:Lorg/w3c/dom/Node;
    if-nez v1, :cond_2f

    .line 1252
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 1254
    :cond_2f
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 1255
    .local v0, buf:Lorg/apache/xml/utils/FastStringBuffer;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1256
    :goto_3a
    if-eqz v1, :cond_48

    .line 1258
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 1259
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_3a

    .line 1261
    :cond_48
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_56

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1262
    .local v3, s:Ljava/lang/String;
    :goto_52
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    goto :goto_1d

    .line 1261
    .end local v3           #s:Ljava/lang/String;
    :cond_56
    const-string v3, ""

    goto :goto_52
.end method

.method public getNumberOfNodes()I
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .registers 8
    .parameter "nodeHandle"

    .prologue
    const/16 v5, 0x3a

    .line 1097
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v4

    .line 1099
    .local v4, type:S
    sparse-switch v4, :sswitch_data_3c

    .line 1125
    const-string v2, ""

    .line 1128
    .local v2, prefix:Ljava/lang/String;
    :goto_b
    return-object v2

    .line 1103
    .end local v2           #prefix:Ljava/lang/String;
    :sswitch_c
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1106
    .local v1, node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 1107
    .local v3, qname:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1109
    .local v0, index:I
    if-gez v0, :cond_1d

    const-string v2, ""

    .line 1111
    .restart local v2       #prefix:Ljava/lang/String;
    :goto_1c
    goto :goto_b

    .line 1109
    .end local v2           #prefix:Ljava/lang/String;
    :cond_1d
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    .line 1115
    .end local v0           #index:I
    .end local v1           #node:Lorg/w3c/dom/Node;
    .end local v3           #qname:Ljava/lang/String;
    :sswitch_24
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1118
    .restart local v1       #node:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 1119
    .restart local v3       #qname:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1121
    .restart local v0       #index:I
    if-gez v0, :cond_35

    const-string v2, ""

    .line 1123
    .restart local v2       #prefix:Ljava/lang/String;
    :goto_34
    goto :goto_b

    .line 1121
    .end local v2           #prefix:Ljava/lang/String;
    :cond_35
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    .line 1099
    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_24
        0xd -> :sswitch_c
    .end sparse-switch
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .registers 3
    .parameter "node"

    .prologue
    .line 1761
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .registers 8
    .parameter "nodeHandle"

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v3

    .line 816
    .local v3, type:I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 819
    .local v1, node:Lorg/w3c/dom/Node;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_13

    const/16 v4, 0x9

    if-eq v4, v3, :cond_13

    const/16 v4, 0xb

    if-ne v4, v3, :cond_36

    .line 822
    :cond_13
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 827
    .local v0, buf:Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_17
    invoke-static {v1, v0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeData(Lorg/w3c/dom/Node;Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 829
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2e

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_31

    move-result-object v2

    .line 833
    .local v2, s:Ljava/lang/String;
    :goto_24
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 836
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    .line 858
    .end local v0           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v2           #s:Ljava/lang/String;
    :goto_2d
    return-object v4

    .line 829
    .restart local v0       #buf:Lorg/apache/xml/utils/FastStringBuffer;
    :cond_2e
    :try_start_2e
    const-string v2, ""
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_31

    goto :goto_24

    .line 833
    :catchall_31
    move-exception v4

    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    throw v4

    .line 838
    .end local v0           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    :cond_36
    const/4 v4, 0x3

    if-eq v4, v3, :cond_3c

    const/4 v4, 0x4

    if-ne v4, v3, :cond_65

    .line 847
    :cond_3c
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 848
    .restart local v0       #buf:Lorg/apache/xml/utils/FastStringBuffer;
    :goto_40
    if-eqz v1, :cond_4e

    .line 850
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 851
    invoke-direct {p0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_40

    .line 853
    :cond_4e
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_62

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 854
    .restart local v2       #s:Ljava/lang/String;
    :goto_58
    invoke-static {v0}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 855
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    goto :goto_2d

    .line 853
    .end local v2           #s:Ljava/lang/String;
    :cond_62
    const-string v2, ""

    goto :goto_58

    .line 858
    .end local v0           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    :cond_65
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v4

    goto :goto_2d
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "name"

    .prologue
    .line 1416
    const-string v5, ""

    .line 1417
    .local v5, url:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/16 v8, 0x9

    if-ne v7, v8, :cond_21

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    check-cast v7, Lorg/w3c/dom/Document;

    move-object v0, v7

    .line 1420
    .local v0, doc:Lorg/w3c/dom/Document;
    :goto_11
    if-eqz v0, :cond_42

    .line 1422
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v1

    .line 1424
    .local v1, doctype:Lorg/w3c/dom/DocumentType;
    if-eqz v1, :cond_42

    .line 1426
    invoke-interface {v1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1427
    .local v2, entities:Lorg/w3c/dom/NamedNodeMap;
    if-nez v2, :cond_28

    move-object v6, v5

    .line 1461
    .end local v1           #doctype:Lorg/w3c/dom/DocumentType;
    .end local v2           #entities:Lorg/w3c/dom/NamedNodeMap;
    .end local v5           #url:Ljava/lang/String;
    .local v6, url:Ljava/lang/String;
    :goto_20
    return-object v6

    .line 1417
    .end local v0           #doc:Lorg/w3c/dom/Document;
    .end local v6           #url:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    :cond_21
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_root:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    goto :goto_11

    .line 1429
    .restart local v0       #doc:Lorg/w3c/dom/Document;
    .restart local v1       #doctype:Lorg/w3c/dom/DocumentType;
    .restart local v2       #entities:Lorg/w3c/dom/NamedNodeMap;
    :cond_28
    invoke-interface {v2, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Entity;

    .line 1430
    .local v3, entity:Lorg/w3c/dom/Entity;
    if-nez v3, :cond_32

    move-object v6, v5

    .line 1431
    .end local v5           #url:Ljava/lang/String;
    .restart local v6       #url:Ljava/lang/String;
    goto :goto_20

    .line 1433
    .end local v6           #url:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    :cond_32
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v4

    .line 1435
    .local v4, notationName:Ljava/lang/String;
    if-eqz v4, :cond_42

    .line 1446
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 1448
    if-nez v5, :cond_42

    .line 1450
    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v5

    .end local v1           #doctype:Lorg/w3c/dom/DocumentType;
    .end local v2           #entities:Lorg/w3c/dom/NamedNodeMap;
    .end local v3           #entity:Lorg/w3c/dom/Entity;
    .end local v4           #notationName:Ljava/lang/String;
    :cond_42
    move-object v6, v5

    .line 1461
    .end local v5           #url:Ljava/lang/String;
    .restart local v6       #url:Ljava/lang/String;
    goto :goto_20
.end method

.method public isAttributeSpecified(I)Z
    .registers 5
    .parameter "attributeHandle"

    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v1

    .line 1477
    .local v1, type:I
    const/4 v2, 0x2

    if-ne v2, v1, :cond_12

    .line 1479
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    .line 1480
    .local v0, attr:Lorg/w3c/dom/Attr;
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v2

    .line 1482
    .end local v0           #attr:Lorg/w3c/dom/Attr;
    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public isWhitespace(I)Z
    .registers 7
    .parameter "nodeHandle"

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNodeType(I)S

    move-result v3

    .line 871
    .local v3, type:I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getNode(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 872
    .local v2, node:Lorg/w3c/dom/Node;
    const/4 v4, 0x3

    if-eq v4, v3, :cond_f

    const/4 v4, 0x4

    if-ne v4, v3, :cond_2c

    .line 881
    :cond_f
    invoke-static {}, Lorg/apache/xml/utils/StringBufferPool;->get()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v1

    .line 882
    .local v1, buf:Lorg/apache/xml/utils/FastStringBuffer;
    :goto_13
    if-eqz v2, :cond_21

    .line 884
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 885
    invoke-direct {p0, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_13

    .line 887
    :cond_21
    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v0

    .line 888
    .local v0, b:Z
    invoke-static {v1}, Lorg/apache/xml/utils/StringBufferPool;->free(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 891
    .end local v0           #b:Z
    .end local v1           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    :cond_2c
    return v0
.end method

.method protected lookupNode(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "nodeIdentity"

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public needsTwoThreads()Z
    .registers 2

    .prologue
    .line 1577
    const/4 v0, 0x0

    return v0
.end method

.method protected nextNode()Z
    .registers 24

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 335
    const/16 v18, 0x0

    .line 593
    :goto_a
    return v18

    .line 339
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 340
    .local v14, pos:Lorg/w3c/dom/Node;
    const/4 v11, 0x0

    .line 341
    .local v11, next:Lorg/w3c/dom/Node;
    const/4 v13, -0x1

    .line 347
    .local v13, nexttype:I
    :cond_11
    invoke-interface {v14}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v18

    if-eqz v18, :cond_c6

    .line 349
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 353
    if-eqz v11, :cond_2d

    const/16 v18, 0xa

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d

    .line 354
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 358
    :cond_2d
    const/16 v18, 0x5

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_84

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    .line 361
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_84

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v17

    .line 367
    .local v17, wsv:S
    const/16 v18, 0x3

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_ba

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getShouldStripWhitespace()Z

    move-result v15

    .line 370
    .local v15, shouldStrip:Z
    :goto_7f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->pushShouldStripWhitespace(Z)V

    .line 433
    .end local v15           #shouldStrip:Z
    .end local v17           #wsv:S
    :cond_84
    :goto_84
    if-eqz v11, :cond_8a

    .line 434
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    .line 441
    :cond_8a
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v0, v13, :cond_91

    .line 442
    move-object v14, v11

    .line 444
    :cond_91
    const/16 v18, 0x5

    move/from16 v0, v18

    if-eq v0, v13, :cond_11

    .line 447
    if-nez v11, :cond_19a

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 450
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_nodesAreProcessed:Z

    .line 451
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 460
    const/16 v18, 0x0

    goto/16 :goto_a

    .line 367
    .restart local v17       #wsv:S
    :cond_ba
    const/16 v18, 0x2

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_c4

    const/4 v15, 0x1

    goto :goto_7f

    :cond_c4
    const/4 v15, 0x0

    goto :goto_7f

    .line 378
    .end local v17           #wsv:S
    :cond_c6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_fd

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v18

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_fd

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 386
    :cond_fd
    :goto_fd
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_123

    .line 390
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 391
    if-eqz v11, :cond_121

    const/16 v18, 0xa

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_121

    .line 392
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 394
    :cond_121
    if-eqz v11, :cond_134

    .line 429
    :cond_123
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_84

    .line 430
    const/4 v11, 0x0

    goto/16 :goto_84

    .line 398
    :cond_134
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    .line 399
    if-nez v14, :cond_13a

    .line 412
    :cond_13a
    if-eqz v14, :cond_148

    const/16 v18, 0x5

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_fd

    .line 420
    :cond_148
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->popShouldStripWhitespace()V

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_188

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 426
    :goto_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    goto/16 :goto_fd

    .line 425
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_16a

    .line 478
    :cond_19a
    const/16 v16, 0x0

    .line 479
    .local v16, suppressNode:Z
    const/4 v9, 0x0

    .line 481
    .local v9, lastTextNode:Lorg/w3c/dom/Node;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    .line 484
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v0, v13, :cond_1ad

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v0, v13, :cond_1e2

    .line 487
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1df

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getShouldStripWhitespace()Z

    move-result v18

    if-eqz v18, :cond_1df

    const/16 v16, 0x1

    .line 491
    :goto_1bd
    move-object v10, v11

    .line 492
    .local v10, n:Lorg/w3c/dom/Node;
    :goto_1be
    if-eqz v10, :cond_1f6

    .line 494
    move-object v9, v10

    .line 496
    const/16 v18, 0x3

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ce

    .line 497
    const/4 v13, 0x3

    .line 500
    :cond_1ce
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/apache/xml/utils/XMLCharacterRecognizer;->isWhiteSpace(Ljava/lang/String;)Z

    move-result v18

    and-int v16, v16, v18

    .line 503
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->logicalNextDOMTextNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    goto :goto_1be

    .line 487
    .end local v10           #n:Lorg/w3c/dom/Node;
    :cond_1df
    const/16 v16, 0x0

    goto :goto_1bd

    .line 512
    :cond_1e2
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ne v0, v13, :cond_1f6

    .line 514
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "xml"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 518
    :cond_1f6
    if-nez v16, :cond_2d5

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_parent:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v13}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v12

    .line 526
    .local v12, nextindex:I
    move-object/from16 v0, p0

    iput v12, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_last_kid:I

    .line 528
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_2d5

    .line 530
    const/4 v5, -0x1

    .line 533
    .local v5, attrIndex:I
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 534
    .local v6, attrs:Lorg/w3c/dom/NamedNodeMap;
    if-nez v6, :cond_267

    const/4 v7, 0x0

    .line 535
    .local v7, attrsize:I
    :goto_220
    if-lez v7, :cond_26c

    .line 537
    const/4 v8, 0x0

    .local v8, i:I
    :goto_223
    if-ge v8, v7, :cond_26c

    .line 542
    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v5, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    move/from16 v18, v0

    if-nez v18, :cond_264

    const-string v18, "xmlns:xml"

    invoke-interface {v6, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_264

    .line 557
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    .line 537
    :cond_264
    add-int/lit8 v8, v8, 0x1

    goto :goto_223

    .line 534
    .end local v7           #attrsize:I
    .end local v8           #i:I
    :cond_267
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    goto :goto_220

    .line 562
    .restart local v7       #attrsize:I
    :cond_26c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    move/from16 v18, v0

    if-nez v18, :cond_2c0

    .line 570
    new-instance v20, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    move-object/from16 v18, v11

    check-cast v18, Lorg/w3c/dom/Element;

    const-string v21, "xml"

    const-string v22, "http://www.w3.org/XML/1998/namespace"

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_2ea

    move/from16 v19, v12

    :goto_286
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->makeNodeHandle(I)I

    move-result v19

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v12, v5, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->addNode(Lorg/w3c/dom/Node;III)I

    move-result v5

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 576
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_processedFirstElement:Z

    .line 578
    :cond_2c0
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_2d5

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 584
    .end local v5           #attrIndex:I
    .end local v6           #attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v7           #attrsize:I
    .end local v12           #nextindex:I
    :cond_2d5
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v0, v13, :cond_2e1

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v0, v13, :cond_2e2

    .line 588
    :cond_2e1
    move-object v11, v9

    .line 592
    :cond_2e2
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->m_pos:Lorg/w3c/dom/Node;

    .line 593
    const/16 v18, 0x1

    goto/16 :goto_a

    .restart local v5       #attrIndex:I
    .restart local v6       #attrs:Lorg/w3c/dom/NamedNodeMap;
    .restart local v7       #attrsize:I
    .restart local v12       #nextindex:I
    :cond_2ea
    move/from16 v19, v5

    .line 570
    goto :goto_286
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 1493
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 1750
    return-void
.end method
