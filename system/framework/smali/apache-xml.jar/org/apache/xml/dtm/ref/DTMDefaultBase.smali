.class public abstract Lorg/apache/xml/dtm/ref/DTMDefaultBase;
.super Ljava/lang/Object;
.source "DTMDefaultBase.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;


# static fields
.field public static final DEFAULT_BLOCKSIZE:I = 0x200

.field public static final DEFAULT_NUMBLOCKS:I = 0x20

.field public static final DEFAULT_NUMBLOCKS_SMALL:I = 0x4

.field static final JJK_DEBUG:Z = false

.field protected static final NOTPROCESSED:I = -0x2

.field public static final ROOTNODE:I


# instance fields
.field protected m_documentBaseURI:Ljava/lang/String;

.field protected m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_elemIndexes:[[[I

.field protected m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_indexing:Z

.field public m_mgr:Lorg/apache/xml/dtm/DTMManager;

.field protected m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

.field protected m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_namespaceDeclSets:Ljava/util/Vector;

.field private m_namespaceLists:Ljava/util/Vector;

.field protected m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_shouldStripWS:Z

.field protected m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

.field protected m_size:I

.field protected m_traversers:[Lorg/apache/xml/dtm/DTMAxisTraverser;

.field protected m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

.field protected m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 17
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"

    .prologue
    .line 171
    const/16 v7, 0x200

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .registers 16
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"
    .parameter "blocksize"
    .parameter "usePrevsib"
    .parameter "newNameTable"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    .line 76
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    .line 80
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 117
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 138
    iput-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    .line 1246
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceLists:Ljava/util/Vector;

    .line 199
    const/16 v2, 0x40

    if-gt p7, v2, :cond_77

    .line 201
    const/4 v0, 0x4

    .line 202
    .local v0, numblocks:I
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 210
    :goto_1f
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 211
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 212
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 213
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 218
    if-eqz p8, :cond_44

    .line 219
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v2, p7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 221
    :cond_44
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    .line 222
    instance-of v2, p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    if-eqz v2, :cond_4e

    .line 223
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .end local p1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 225
    :cond_4e
    if-eqz p2, :cond_54

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v1

    :cond_54
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p3, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 227
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    .line 228
    iput-object p5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    .line 229
    iput-boolean p6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_indexing:Z

    .line 231
    if-eqz p6, :cond_83

    .line 233
    new-instance v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 242
    :goto_6a
    if-eqz p4, :cond_76

    .line 244
    new-instance v1, Lorg/apache/xml/utils/BoolStack;

    invoke-direct {v1}, Lorg/apache/xml/utils/BoolStack;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    .line 246
    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->pushShouldStripWhitespace(Z)V

    .line 248
    :cond_76
    return-void

    .line 206
    .end local v0           #numblocks:I
    .restart local p1
    :cond_77
    const/16 v0, 0x20

    .line 207
    .restart local v0       #numblocks:I
    new-instance v2, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_1f

    .line 239
    .end local p1
    :cond_83
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    goto :goto_6a
.end method


# virtual methods
.method protected _exptype(I)I
    .registers 4
    .parameter "identity"

    .prologue
    const/4 v0, -0x1

    .line 479
    if-ne p1, v0, :cond_4

    .line 489
    :goto_3
    return v0

    .line 484
    :cond_4
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_13

    .line 486
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_4

    goto :goto_3

    .line 489
    :cond_13
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    goto :goto_3
.end method

.method protected _firstch(I)I
    .registers 7
    .parameter "identity"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 526
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v4, :cond_15

    move v0, v2

    .line 531
    .local v0, info:I
    :cond_7
    :goto_7
    if-ne v0, v2, :cond_28

    .line 533
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    .line 535
    .local v1, isMore:Z
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v4, :cond_1c

    if-nez v1, :cond_1c

    move v2, v3

    .line 545
    .end local v1           #isMore:Z
    :goto_14
    return v2

    .line 526
    .end local v0           #info:I
    :cond_15
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    goto :goto_7

    .line 539
    .restart local v0       #info:I
    .restart local v1       #isMore:Z
    :cond_1c
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 540
    if-ne v0, v2, :cond_7

    if-nez v1, :cond_7

    move v2, v3

    .line 541
    goto :goto_14

    .end local v1           #isMore:Z
    :cond_28
    move v2, v0

    .line 545
    goto :goto_14
.end method

.method protected _level(I)I
    .registers 6
    .parameter "identity"

    .prologue
    const/4 v2, -0x1

    .line 502
    :cond_1
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v3, :cond_11

    .line 504
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    .line 505
    .local v1, isMore:Z
    if-nez v1, :cond_1

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v3, :cond_1

    move v0, v2

    .line 512
    .end local v1           #isMore:Z
    :cond_10
    return v0

    .line 509
    :cond_11
    const/4 v0, 0x0

    .line 510
    .local v0, i:I
    :goto_12
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result p1

    if-eq v2, p1, :cond_10

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method protected _nextsib(I)I
    .registers 7
    .parameter "identity"

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 558
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v4, :cond_15

    move v0, v2

    .line 563
    .local v0, info:I
    :cond_7
    :goto_7
    if-ne v0, v2, :cond_28

    .line 565
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v1

    .line 567
    .local v1, isMore:Z
    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v4, :cond_1c

    if-nez v1, :cond_1c

    move v2, v3

    .line 577
    .end local v1           #isMore:Z
    :goto_14
    return v2

    .line 558
    .end local v0           #info:I
    :cond_15
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    goto :goto_7

    .line 571
    .restart local v0       #info:I
    .restart local v1       #isMore:Z
    :cond_1c
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 572
    if-ne v0, v2, :cond_7

    if-nez v1, :cond_7

    move v2, v3

    .line 573
    goto :goto_14

    .end local v1           #isMore:Z
    :cond_28
    move v2, v0

    .line 577
    goto :goto_14
.end method

.method protected _parent(I)I
    .registers 4
    .parameter "identity"

    .prologue
    .line 617
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_b

    .line 618
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    .line 630
    :goto_a
    return v1

    .line 625
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    .line 627
    .local v0, isMore:Z
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_17

    if-nez v0, :cond_17

    .line 628
    const/4 v1, -0x1

    goto :goto_a

    .line 629
    :cond_17
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_b

    .line 630
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    goto :goto_a
.end method

.method protected _prevsib(I)I
    .registers 4
    .parameter "identity"

    .prologue
    .line 590
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_b

    .line 591
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    .line 603
    :goto_a
    return v1

    .line 598
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v0

    .line 600
    .local v0, isMore:Z
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-lt p1, v1, :cond_17

    if-nez v0, :cond_17

    .line 601
    const/4 v1, -0x1

    goto :goto_a

    .line 602
    :cond_17
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    if-ge p1, v1, :cond_b

    .line 603
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    goto :goto_a
.end method

.method protected _type(I)S
    .registers 4
    .parameter "identity"

    .prologue
    const/4 v1, -0x1

    .line 462
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    .line 464
    .local v0, info:I
    if-eq v1, v0, :cond_d

    .line 465
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v1

    .line 467
    :cond_d
    return v1
.end method

.method public appendChild(IZZ)V
    .registers 6
    .parameter "newChild"
    .parameter "clone"
    .parameter "cloneDepth"

    .prologue
    .line 2237
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    .line 2238
    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 2251
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    .line 2252
    return-void
.end method

.method protected declareNamespaceInContext(II)V
    .registers 12
    .parameter "elementNodeIndex"
    .parameter "namespaceNodeIndex"

    .prologue
    const/16 v8, 0x20

    .line 1264
    const/4 v5, 0x0

    .line 1265
    .local v5, nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez v6, :cond_57

    .line 1269
    new-instance v6, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v6, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    iput-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 1270
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1271
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    .line 1272
    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    .end local v5           #nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    invoke-direct {v5, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    .line 1273
    .restart local v5       #nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1286
    :cond_24
    :goto_24
    if-nez v5, :cond_7c

    .line 1288
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1290
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v1

    .line 1293
    .local v1, inherited:Lorg/apache/xml/utils/SuballocatedIntVector;
    if-eqz v1, :cond_72

    .line 1297
    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v2

    .line 1301
    .local v2, isize:I
    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    .end local v5           #nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    add-int/lit8 v6, v2, 0x10

    const/16 v7, 0x800

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    .line 1304
    .restart local v5       #nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4b
    if-ge v0, v2, :cond_77

    .line 1306
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1304
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 1279
    .end local v0           #i:I
    .end local v1           #inherited:Lorg/apache/xml/utils/SuballocatedIntVector;
    .end local v2           #isize:I
    :cond_57
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1281
    .local v3, last:I
    if-ltz v3, :cond_24

    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    if-ne p1, v6, :cond_24

    .line 1283
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    check-cast v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    .restart local v5       #nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    goto :goto_24

    .line 1309
    .end local v3           #last:I
    .restart local v1       #inherited:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_72
    new-instance v5, Lorg/apache/xml/utils/SuballocatedIntVector;

    .end local v5           #nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    invoke-direct {v5, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    .line 1312
    .restart local v5       #nsList:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_77
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1319
    .end local v1           #inherited:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_7c
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v4

    .line 1321
    .local v4, newEType:I
    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0       #i:I
    :goto_86
    if-ltz v0, :cond_9d

    .line 1323
    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v6

    if-ne v4, v6, :cond_9a

    .line 1325
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 1330
    :goto_99
    return-void

    .line 1321
    :cond_9a
    add-int/lit8 v0, v0, -0x1

    goto :goto_86

    .line 1329
    :cond_9d
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_99
.end method

.method public abstract dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public abstract dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method

.method public documentRegistration()V
    .registers 1

    .prologue
    .line 2324
    return-void
.end method

.method public documentRelease()V
    .registers 1

    .prologue
    .line 2333
    return-void
.end method

.method public dumpDTM(Ljava/io/OutputStream;)V
    .registers 21
    .parameter "os"

    .prologue
    .line 641
    if-nez p1, :cond_49

    .line 643
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DTMDump"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".txt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .local v2, f:Ljava/io/File;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Dumping... "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local p1
    .local v10, os:Ljava/io/OutputStream;
    move-object/from16 p1, v10

    .line 647
    .end local v2           #f:Ljava/io/File;
    .end local v10           #os:Ljava/io/OutputStream;
    .restart local p1
    :cond_49
    new-instance v13, Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 649
    .local v13, ps:Ljava/io/PrintStream;
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->nextNode()Z

    move-result v16

    if-nez v16, :cond_50

    .line 651
    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_size:I

    .line 653
    .local v8, nRecords:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Total nodes: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 655
    const/4 v5, 0x0

    .local v5, index:I
    :goto_75
    if-ge v5, v8, :cond_330

    .line 657
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    .line 658
    .local v4, i:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "=========== index="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " handle="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ==========="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 659
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NodeName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeName(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 660
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NodeNameX: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 661
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LocalName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getLocalName(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 662
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "NamespaceURI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 663
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Prefix: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getPrefix(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 665
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    .line 667
    .local v1, exTypeID:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Expanded Type ID: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v14

    .line 673
    .local v14, type:I
    packed-switch v14, :pswitch_data_332

    .line 718
    :pswitch_16a
    const-string v15, "Unknown!"

    .line 722
    .local v15, typestring:Ljava/lang/String;
    :goto_16c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Type: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v3

    .line 726
    .local v3, firstChild:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_272

    .line 727
    const-string v16, "First child: DTM.NULL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    :goto_199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1b4

    .line 735
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    move-result v12

    .line 737
    .local v12, prevSibling:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v12, :cond_2af

    .line 738
    const-string v16, "Prev sibling: DTM.NULL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 745
    .end local v12           #prevSibling:I
    :cond_1b4
    :goto_1b4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v9

    .line 747
    .local v9, nextSibling:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v9, :cond_2da

    .line 748
    const-string v16, "Next sibling: DTM.NULL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 754
    :goto_1c7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v11

    .line 756
    .local v11, parent:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v11, :cond_305

    .line 757
    const-string v16, "Parent: DTM.NULL"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    :goto_1da
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_level(I)I

    move-result v7

    .line 765
    .local v7, level:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Level: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 766
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Node Value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 767
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "String Value: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 655
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_75

    .line 676
    .end local v3           #firstChild:I
    .end local v7           #level:I
    .end local v9           #nextSibling:I
    .end local v11           #parent:I
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_23a
    const-string v15, "ATTRIBUTE_NODE"

    .line 677
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 679
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_23e
    const-string v15, "CDATA_SECTION_NODE"

    .line 680
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 682
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_242
    const-string v15, "COMMENT_NODE"

    .line 683
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 685
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_246
    const-string v15, "DOCUMENT_FRAGMENT_NODE"

    .line 686
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 688
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_24a
    const-string v15, "DOCUMENT_NODE"

    .line 689
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 691
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_24e
    const-string v15, "DOCUMENT_NODE"

    .line 692
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 694
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_252
    const-string v15, "ELEMENT_NODE"

    .line 695
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 697
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_256
    const-string v15, "ENTITY_NODE"

    .line 698
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 700
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_25a
    const-string v15, "ENTITY_REFERENCE_NODE"

    .line 701
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 703
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_25e
    const-string v15, "NAMESPACE_NODE"

    .line 704
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 706
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_262
    const-string v15, "NOTATION_NODE"

    .line 707
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 709
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_266
    const-string v15, "NULL"

    .line 710
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 712
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_26a
    const-string v15, "PROCESSING_INSTRUCTION_NODE"

    .line 713
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 715
    .end local v15           #typestring:Ljava/lang/String;
    :pswitch_26e
    const-string v15, "TEXT_NODE"

    .line 716
    .restart local v15       #typestring:Ljava/lang/String;
    goto/16 :goto_16c

    .line 728
    .restart local v3       #firstChild:I
    :cond_272
    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v3, :cond_293

    .line 729
    const-string v16, "First child: NOTPROCESSED"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_27f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27f} :catch_281

    goto/16 :goto_199

    .line 770
    .end local v1           #exTypeID:I
    .end local v3           #firstChild:I
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v8           #nRecords:I
    .end local v13           #ps:Ljava/io/PrintStream;
    .end local v14           #type:I
    .end local v15           #typestring:Ljava/lang/String;
    :catch_281
    move-exception v6

    .line 772
    .local v6, ioe:Ljava/io/IOException;
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 773
    new-instance v16, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 731
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #exTypeID:I
    .restart local v3       #firstChild:I
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v8       #nRecords:I
    .restart local v13       #ps:Ljava/io/PrintStream;
    .restart local v14       #type:I
    .restart local v15       #typestring:Ljava/lang/String;
    :cond_293
    :try_start_293
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "First child: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_199

    .line 739
    .restart local v12       #prevSibling:I
    :cond_2af
    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v12, :cond_2be

    .line 740
    const-string v16, "Prev sibling: NOTPROCESSED"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1b4

    .line 742
    :cond_2be
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Prev sibling: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1b4

    .line 749
    .end local v12           #prevSibling:I
    .restart local v9       #nextSibling:I
    :cond_2da
    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v9, :cond_2e9

    .line 750
    const-string v16, "Next sibling: NOTPROCESSED"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1c7

    .line 752
    :cond_2e9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Next sibling: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1c7

    .line 758
    .restart local v11       #parent:I
    :cond_305
    const/16 v16, -0x2

    move/from16 v0, v16

    if-ne v0, v11, :cond_314

    .line 759
    const-string v16, "Parent: NOTPROCESSED"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1da

    .line 761
    :cond_314
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Parent: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_32e
    .catch Ljava/io/IOException; {:try_start_293 .. :try_end_32e} :catch_281

    goto/16 :goto_1da

    .line 775
    .end local v1           #exTypeID:I
    .end local v3           #firstChild:I
    .end local v4           #i:I
    .end local v9           #nextSibling:I
    .end local v11           #parent:I
    .end local v14           #type:I
    .end local v15           #typestring:Ljava/lang/String;
    :cond_330
    return-void

    .line 673
    nop

    :pswitch_data_332
    .packed-switch -0x1
        :pswitch_266
        :pswitch_16a
        :pswitch_252
        :pswitch_23a
        :pswitch_26e
        :pswitch_23e
        :pswitch_25a
        :pswitch_256
        :pswitch_26a
        :pswitch_242
        :pswitch_24a
        :pswitch_24e
        :pswitch_246
        :pswitch_262
        :pswitch_25e
    .end packed-switch
.end method

.method public dumpNode(I)Ljava/lang/String;
    .registers 6
    .parameter "nodeHandle"

    .prologue
    .line 792
    const/4 v2, -0x1

    if-ne p1, v2, :cond_6

    .line 793
    const-string v2, "[null]"

    .line 850
    :goto_5
    return-object v2

    .line 796
    :cond_6
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v2

    packed-switch v2, :pswitch_data_b4

    .line 841
    :pswitch_d
    const-string v1, "Unknown!"

    .line 845
    .local v1, typestring:Ljava/lang/String;
    :goto_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 846
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getExpandedTypeID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 799
    .end local v0           #sb:Ljava/lang/StringBuffer;
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_81
    const-string v1, "ATTR"

    .line 800
    .restart local v1       #typestring:Ljava/lang/String;
    goto :goto_f

    .line 802
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_84
    const-string v1, "CDATA"

    .line 803
    .restart local v1       #typestring:Ljava/lang/String;
    goto :goto_f

    .line 805
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_87
    const-string v1, "COMMENT"

    .line 806
    .restart local v1       #typestring:Ljava/lang/String;
    goto :goto_f

    .line 808
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_8a
    const-string v1, "DOC_FRAG"

    .line 809
    .restart local v1       #typestring:Ljava/lang/String;
    goto :goto_f

    .line 811
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_8d
    const-string v1, "DOC"

    .line 812
    .restart local v1       #typestring:Ljava/lang/String;
    goto :goto_f

    .line 814
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_90
    const-string v1, "DOC_TYPE"

    .line 815
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 817
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_94
    const-string v1, "ELEMENT"

    .line 818
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 820
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_98
    const-string v1, "ENTITY"

    .line 821
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 823
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_9c
    const-string v1, "ENT_REF"

    .line 824
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 826
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_a0
    const-string v1, "NAMESPACE"

    .line 827
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 829
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_a4
    const-string v1, "NOTATION"

    .line 830
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 832
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_a8
    const-string v1, "null"

    .line 833
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 835
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_ac
    const-string v1, "PI"

    .line 836
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 838
    .end local v1           #typestring:Ljava/lang/String;
    :pswitch_b0
    const-string v1, "TEXT"

    .line 839
    .restart local v1       #typestring:Ljava/lang/String;
    goto/16 :goto_f

    .line 796
    :pswitch_data_b4
    .packed-switch -0x1
        :pswitch_a8
        :pswitch_d
        :pswitch_94
        :pswitch_81
        :pswitch_b0
        :pswitch_84
        :pswitch_9c
        :pswitch_98
        :pswitch_ac
        :pswitch_87
        :pswitch_8d
        :pswitch_90
        :pswitch_8a
        :pswitch_a4
        :pswitch_a0
    .end packed-switch
.end method

.method protected ensureSizeOfIndex(II)V
    .registers 9
    .parameter "namespaceID"
    .parameter "LocalNameID"

    .prologue
    const/4 v5, 0x0

    .line 259
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    if-nez v3, :cond_27

    .line 261
    add-int/lit8 v3, p1, 0x14

    new-array v3, v3, [[[I

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    .line 272
    :cond_b
    :goto_b
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aget-object v2, v3, p1

    .line 274
    .local v2, localNameIndex:[[I
    if-nez v2, :cond_3b

    .line 276
    add-int/lit8 v3, p2, 0x64

    new-array v2, v3, [[I

    .line 277
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aput-object v2, v3, p1

    .line 290
    :cond_19
    :goto_19
    aget-object v0, v2, p2

    .line 292
    .local v0, elemHandles:[I
    if-nez v0, :cond_4c

    .line 294
    const/16 v3, 0x80

    new-array v0, v3, [I

    .line 295
    aput-object v0, v2, p2

    .line 296
    const/4 v3, 0x1

    aput v3, v0, v5

    .line 308
    :cond_26
    :goto_26
    return-void

    .line 263
    .end local v0           #elemHandles:[I
    .end local v2           #localNameIndex:[[I
    :cond_27
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    array-length v3, v3

    if-gt v3, p1, :cond_b

    .line 265
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    .line 267
    .local v1, indexes:[[[I
    add-int/lit8 v3, p1, 0x14

    new-array v3, v3, [[[I

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    .line 269
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 279
    .end local v1           #indexes:[[[I
    .restart local v2       #localNameIndex:[[I
    :cond_3b
    array-length v3, v2

    if-gt v3, p2, :cond_19

    .line 281
    move-object v1, v2

    .line 283
    .local v1, indexes:[[I
    add-int/lit8 v3, p2, 0x64

    new-array v2, v3, [[I

    .line 285
    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aput-object v2, v3, p1

    goto :goto_19

    .line 298
    .end local v1           #indexes:[[I
    .restart local v0       #elemHandles:[I
    :cond_4c
    array-length v3, v0

    aget v4, v0, v5

    add-int/lit8 v4, v4, 0x1

    if-gt v3, v4, :cond_26

    .line 300
    move-object v1, v0

    .line 302
    .local v1, indexes:[I
    aget v3, v0, v5

    add-int/lit16 v3, v3, 0x400

    new-array v0, v3, [I

    .line 304
    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    aput-object v0, v2, p2

    goto :goto_26
.end method

.method protected error(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2261
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    invoke-direct {v0, p1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findElementFromIndex(III)I
    .registers 10
    .parameter "nsIndex"
    .parameter "lnIndex"
    .parameter "firstPotential"

    .prologue
    .line 388
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    .line 390
    .local v1, indexes:[[[I
    if-eqz v1, :cond_20

    array-length v4, v1

    if-ge p1, v4, :cond_20

    .line 392
    aget-object v2, v1, p1

    .line 394
    .local v2, lnIndexs:[[I
    if-eqz v2, :cond_20

    array-length v4, v2

    if-ge p2, v4, :cond_20

    .line 396
    aget-object v0, v2, p2

    .line 398
    .local v0, elems:[I
    if-eqz v0, :cond_20

    .line 400
    const/4 v4, 0x1

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {p0, v0, v4, v5, p3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findGTE([IIII)I

    move-result v3

    .line 402
    .local v3, pos:I
    const/4 v4, -0x1

    if-le v3, v4, :cond_20

    .line 404
    aget v4, v0, v3

    .line 410
    .end local v0           #elems:[I
    .end local v2           #lnIndexs:[[I
    .end local v3           #pos:I
    :goto_1f
    return v4

    :cond_20
    const/4 v4, -0x2

    goto :goto_1f
.end method

.method protected findGTE([IIII)I
    .registers 11
    .parameter "list"
    .parameter "start"
    .parameter "len"
    .parameter "value"

    .prologue
    .line 354
    move v3, p2

    .line 355
    .local v3, low:I
    add-int/lit8 v5, p3, -0x1

    add-int v2, p2, v5

    .line 356
    .local v2, high:I
    move v1, v2

    .line 358
    .local v1, end:I
    :goto_6
    if-gt v3, v2, :cond_18

    .line 360
    add-int v5, v3, v2

    div-int/lit8 v4, v5, 0x2

    .line 361
    .local v4, mid:I
    aget v0, p1, v4

    .line 363
    .local v0, c:I
    if-le v0, p4, :cond_13

    .line 364
    add-int/lit8 v2, v4, -0x1

    goto :goto_6

    .line 365
    :cond_13
    if-ge v0, p4, :cond_1f

    .line 366
    add-int/lit8 v3, v4, 0x1

    goto :goto_6

    .line 371
    .end local v0           #c:I
    .end local v4           #mid:I
    :cond_18
    if-gt v3, v1, :cond_20

    aget v5, p1, v3

    if-le v5, p4, :cond_20

    .end local v3           #low:I
    :goto_1e
    move v4, v3

    :cond_1f
    return v4

    .restart local v3       #low:I
    :cond_20
    const/4 v3, -0x1

    goto :goto_1e
.end method

.method protected findInSortedSuballocatedIntVector(Lorg/apache/xml/utils/SuballocatedIntVector;I)I
    .registers 8
    .parameter "vector"
    .parameter "lookfor"

    .prologue
    .line 1418
    const/4 v1, 0x0

    .line 1419
    .local v1, i:I
    if-eqz p1, :cond_25

    .line 1420
    const/4 v0, 0x0

    .line 1421
    .local v0, first:I
    invoke-virtual {p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 1423
    .local v2, last:I
    :goto_a
    if-gt v0, v2, :cond_22

    .line 1424
    add-int v4, v0, v2

    div-int/lit8 v1, v4, 0x2

    .line 1425
    invoke-virtual {p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    sub-int v3, p2, v4

    .line 1426
    .local v3, test:I
    if-nez v3, :cond_1a

    move v4, v1

    .line 1442
    .end local v0           #first:I
    .end local v2           #last:I
    .end local v3           #test:I
    :goto_19
    return v4

    .line 1429
    .restart local v0       #first:I
    .restart local v2       #last:I
    .restart local v3       #test:I
    :cond_1a
    if-gez v3, :cond_1f

    .line 1430
    add-int/lit8 v2, v1, -0x1

    goto :goto_a

    .line 1433
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    goto :goto_a

    .line 1437
    .end local v3           #test:I
    :cond_22
    if-le v0, v1, :cond_25

    .line 1438
    move v1, v0

    .line 1442
    .end local v0           #first:I
    .end local v2           #last:I
    :cond_25
    rsub-int/lit8 v4, v1, -0x1

    goto :goto_19
.end method

.method protected findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;
    .registers 13
    .parameter "elementNodeIndex"

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 1341
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v8, :cond_16

    .line 1345
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, v8, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findInSortedSuballocatedIntVector(Lorg/apache/xml/utils/SuballocatedIntVector;I)I

    move-result v6

    .line 1347
    .local v6, wouldBeAt:I
    if-ltz v6, :cond_17

    .line 1348
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 1399
    .end local v6           #wouldBeAt:I
    :cond_16
    :goto_16
    return-object v7

    .line 1349
    .restart local v6       #wouldBeAt:I
    :cond_17
    if-eq v6, v10, :cond_16

    .line 1354
    rsub-int/lit8 v6, v6, -0x1

    .line 1357
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v8, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    .line 1358
    .local v1, candidate:I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    .line 1363
    .local v0, ancestor:I
    if-nez v6, :cond_5d

    if-ge v1, v0, :cond_5d

    .line 1364
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result v3

    .line 1365
    .local v3, rootHandle:I
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v4

    .line 1368
    .local v4, rootID:I
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_53

    .line 1369
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v2

    .line 1370
    .local v2, ch:I
    if-eq v2, v10, :cond_51

    move v5, v2

    .line 1375
    .end local v2           #ch:I
    .local v5, uppermostNSCandidateID:I
    :goto_46
    if-ne v1, v5, :cond_5d

    .line 1376
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_16

    .end local v5           #uppermostNSCandidateID:I
    .restart local v2       #ch:I
    :cond_51
    move v5, v4

    .line 1370
    goto :goto_46

    .line 1372
    .end local v2           #ch:I
    :cond_53
    move v5, v4

    .restart local v5       #uppermostNSCandidateID:I
    goto :goto_46

    .line 1385
    .end local v3           #rootHandle:I
    .end local v4           #rootID:I
    .end local v5           #uppermostNSCandidateID:I
    :cond_55
    if-ge v1, v0, :cond_6c

    .line 1388
    :cond_57
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v0

    .line 1389
    if-lt v1, v0, :cond_57

    .line 1380
    :cond_5d
    :goto_5d
    if-ltz v6, :cond_16

    if-lez v0, :cond_16

    .line 1382
    if-ne v1, v0, :cond_55

    .line 1384
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_16

    .line 1390
    :cond_6c
    if-lez v6, :cond_16

    .line 1392
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v8, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    goto :goto_5d
.end method

.method public abstract getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;
    .registers 2

    .prologue
    .line 2368
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2369
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    goto :goto_5
.end method

.method public getDocument()I
    .registers 3

    .prologue
    .line 1579
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .registers 2

    .prologue
    .line 2006
    const/4 v0, 0x1

    return v0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1920
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1959
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getDocumentRoot(I)I
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1613
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v0

    return v0
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1974
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1944
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
.end method

.method public abstract getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .registers 3
    .parameter "documentHandle"

    .prologue
    .line 1989
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getElementById(Ljava/lang/String;)I
.end method

.method public getExpandedTypeID(I)I
    .registers 4
    .parameter "nodeHandle"

    .prologue
    const/4 v1, -0x1

    .line 1682
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1683
    .local v0, id:I
    if-ne v0, v1, :cond_8

    .line 1685
    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    goto :goto_7
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .parameter "namespace"
    .parameter "localName"
    .parameter "type"

    .prologue
    .line 1707
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 1709
    .local v0, ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getFirstAttribute(I)I
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1063
    .local v0, nodeID:I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getFirstAttributeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    return v1
.end method

.method protected getFirstAttributeIdentity(I)I
    .registers 5
    .parameter "identity"

    .prologue
    const/4 v1, -0x1

    .line 1073
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    .line 1075
    .local v0, type:I
    const/4 v2, 0x1

    if-ne v2, v0, :cond_16

    .line 1078
    :cond_8
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v1, p1, :cond_16

    .line 1082
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    .line 1084
    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    move v1, p1

    .line 1095
    :cond_16
    :goto_16
    return v1

    .line 1088
    :cond_17
    const/16 v2, 0xd

    if-eq v2, v0, :cond_8

    goto :goto_16
.end method

.method public getFirstChild(I)I
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 972
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    .line 973
    .local v1, identity:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    .line 975
    .local v0, firstChild:I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    return v2
.end method

.method public getFirstNamespaceNode(IZ)I
    .registers 9
    .parameter "nodeHandle"
    .parameter "inScope"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 1461
    if-eqz p2, :cond_21

    .line 1463
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1464
    .local v0, identity:I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v4

    if-ne v4, v5, :cond_1a

    .line 1466
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v1

    .line 1467
    .local v1, nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v4

    if-ge v4, v5, :cond_1b

    .line 1497
    .end local v1           #nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_1a
    :goto_1a
    return v3

    .line 1470
    .restart local v1       #nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    goto :goto_1a

    .line 1483
    .end local v0           #identity:I
    .end local v1           #nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_21
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1484
    .restart local v0       #identity:I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v4

    if-ne v4, v5, :cond_1a

    .line 1486
    :cond_2b
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result v0

    if-eq v3, v0, :cond_1a

    .line 1488
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v2

    .line 1489
    .local v2, type:I
    const/16 v4, 0xd

    if-ne v2, v4, :cond_3e

    .line 1490
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v3

    goto :goto_1a

    .line 1491
    :cond_3e
    const/4 v4, 0x2

    if-eq v4, v2, :cond_2b

    goto :goto_1a
.end method

.method public getLastChild(I)I
    .registers 6
    .parameter "nodeHandle"

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    .line 1026
    .local v1, identity:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    .line 1027
    .local v0, child:I
    const/4 v2, -0x1

    .line 1029
    .local v2, lastChild:I
    :goto_9
    const/4 v3, -0x1

    if-eq v0, v3, :cond_12

    .line 1031
    move v2, v0

    .line 1032
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_9

    .line 1035
    :cond_12
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v3

    return v3
.end method

.method public getLevel(I)S
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 1852
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1853
    .local v0, identity:I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_level(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    return v1
.end method

.method public abstract getLocalName(I)Ljava/lang/String;
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .registers 3
    .parameter "expandedNameID"

    .prologue
    .line 1720
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 2

    .prologue
    .line 2357
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    return-object v0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .registers 3
    .parameter "expandedNameID"

    .prologue
    .line 1732
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceType(I)I
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 1743
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    .line 1744
    .local v1, identity:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    .line 1746
    .local v0, expandedNameID:I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v2

    return v2
.end method

.method public abstract getNamespaceURI(I)Ljava/lang/String;
.end method

.method public getNextAttribute(I)I
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 1211
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1213
    .local v0, nodeID:I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 1214
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextAttributeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    .line 1217
    :goto_13
    return v1

    :cond_14
    const/4 v1, -0x1

    goto :goto_13
.end method

.method protected getNextAttributeIdentity(I)I
    .registers 5
    .parameter "identity"

    .prologue
    const/4 v1, -0x1

    .line 1232
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result p1

    if-eq v1, p1, :cond_13

    .line 1233
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v0

    .line 1235
    .local v0, type:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    .line 1242
    .end local v0           #type:I
    .end local p1
    :goto_e
    return p1

    .line 1237
    .restart local v0       #type:I
    .restart local p1
    :cond_f
    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    .end local v0           #type:I
    :cond_13
    move p1, v1

    .line 1242
    goto :goto_e
.end method

.method public getNextNamespaceNode(IIZ)I
    .registers 10
    .parameter "baseHandle"
    .parameter "nodeHandle"
    .parameter "inScope"

    .prologue
    const/4 v4, -0x1

    .line 1514
    if-eqz p3, :cond_21

    .line 1521
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v2

    .line 1523
    .local v2, nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    if-nez v2, :cond_e

    .line 1548
    .end local v2           #nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_d
    :goto_d
    return v4

    .line 1525
    .restart local v2       #nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_e
    invoke-virtual {v2, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 1526
    .local v0, i:I
    if-lez v0, :cond_d

    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v5

    if-eq v0, v5, :cond_d

    .line 1529
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    goto :goto_d

    .line 1534
    .end local v0           #i:I
    .end local v2           #nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_21
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    .line 1535
    .local v1, identity:I
    :cond_25
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result v1

    if-eq v4, v1, :cond_d

    .line 1537
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v3

    .line 1538
    .local v3, type:I
    const/16 v5, 0xd

    if-ne v3, v5, :cond_38

    .line 1540
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    goto :goto_d

    .line 1542
    :cond_38
    const/4 v5, 0x2

    if-eq v3, v5, :cond_25

    goto :goto_d
.end method

.method protected abstract getNextNodeIdentity(I)I
.end method

.method public getNextSibling(I)I
    .registers 3
    .parameter "nodeHandle"

    .prologue
    const/4 v0, -0x1

    .line 1140
    if-ne p1, v0, :cond_4

    .line 1142
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    goto :goto_3
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 2218
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    invoke-direct {v0, p0, p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;-><init>(Lorg/apache/xml/dtm/DTM;I)V

    return-object v0
.end method

.method public getNodeHandle(I)I
    .registers 3
    .parameter "nodeId"

    .prologue
    .line 1887
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v0

    return v0
.end method

.method public getNodeIdent(I)I
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1870
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    return v0
.end method

.method public abstract getNodeName(I)Ljava/lang/String;
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .registers 4
    .parameter "nodeHandle"

    .prologue
    const/4 v1, 0x0

    .line 1772
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    .line 1774
    return-object v1
.end method

.method public getNodeType(I)S
    .registers 4
    .parameter "nodeHandle"

    .prologue
    const/4 v0, -0x1

    .line 1836
    if-ne p1, v0, :cond_4

    .line 1838
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v0

    goto :goto_3
.end method

.method public abstract getNodeValue(I)Ljava/lang/String;
.end method

.method protected abstract getNumberOfNodes()I
.end method

.method public getOwnerDocument(I)I
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 1597
    const/16 v0, 0x9

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    if-ne v0, v1, :cond_a

    .line 1598
    const/4 v0, -0x1

    .line 1600
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDocumentRoot(I)I

    move-result v0

    goto :goto_9
.end method

.method public getParent(I)I
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 1561
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1563
    .local v0, identity:I
    if-lez v0, :cond_f

    .line 1564
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v1

    .line 1566
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public abstract getPrefix(I)Ljava/lang/String;
.end method

.method public getPreviousSibling(I)I
    .registers 7
    .parameter "nodeHandle"

    .prologue
    const/4 v4, -0x1

    .line 1178
    if-ne p1, v4, :cond_4

    .line 1197
    :goto_3
    return v4

    .line 1181
    :cond_4
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v4, :cond_15

    .line 1182
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_prevsib(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    goto :goto_3

    .line 1188
    :cond_15
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    .line 1189
    .local v1, nodeID:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_parent(I)I

    move-result v2

    .line 1190
    .local v2, parent:I
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    .line 1191
    .local v0, node:I
    const/4 v3, -0x1

    .line 1192
    .local v3, result:I
    :goto_22
    if-eq v0, v1, :cond_2a

    .line 1194
    move v3, v0

    .line 1195
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v0

    goto :goto_22

    .line 1197
    :cond_2a
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v4

    goto :goto_3
.end method

.method protected getShouldStripWhitespace()Z
    .registers 2

    .prologue
    .line 2272
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    return v0
.end method

.method public abstract getStringValue(I)Lorg/apache/xml/utils/XMLString;
.end method

.method public getStringValueChunk(II[I)[C
    .registers 6
    .parameter "nodeHandle"
    .parameter "chunkIndex"
    .parameter "startAndLen"

    .prologue
    const/4 v1, 0x0

    .line 1666
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    .line 1668
    return-object v1
.end method

.method public getStringValueChunkCount(I)I
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 1643
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->error(Ljava/lang/String;)V

    .line 1645
    const/4 v0, 0x0

    return v0
.end method

.method protected getTypedAttribute(II)I
    .registers 7
    .parameter "nodeHandle"
    .parameter "attType"

    .prologue
    const/4 v2, -0x1

    .line 1108
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNodeType(I)S

    move-result v1

    .line 1109
    .local v1, type:I
    const/4 v3, 0x1

    if-ne v3, v1, :cond_23

    .line 1110
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 1112
    .local v0, identity:I
    :cond_c
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getNextNodeIdentity(I)I

    move-result v0

    if-eq v2, v0, :cond_23

    .line 1114
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_type(I)S

    move-result v1

    .line 1116
    const/4 v3, 0x2

    if-ne v1, v3, :cond_24

    .line 1118
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v3

    if-ne v3, p2, :cond_c

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    .line 1127
    .end local v0           #identity:I
    :cond_23
    :goto_23
    return v2

    .line 1120
    .restart local v0       #identity:I
    :cond_24
    const/16 v3, 0xd

    if-eq v3, v1, :cond_c

    goto :goto_23
.end method

.method public getTypedFirstChild(II)I
    .registers 8
    .parameter "nodeHandle"
    .parameter "nodeType"

    .prologue
    const/16 v4, 0xe

    const/4 v2, -0x1

    .line 990
    if-ge p2, v4, :cond_29

    .line 991
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v1

    .line 992
    .local v1, firstChild:I
    :goto_d
    if-eq v1, v2, :cond_23

    .line 994
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    .line 995
    .local v0, eType:I
    if-eq v0, p2, :cond_1f

    if-lt v0, v4, :cond_24

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v3

    if-ne v3, p2, :cond_24

    .line 998
    :cond_1f
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    .line 1010
    .end local v0           #eType:I
    :cond_23
    :goto_23
    return v2

    .line 993
    .restart local v0       #eType:I
    :cond_24
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    goto :goto_d

    .line 1002
    .end local v0           #eType:I
    .end local v1           #firstChild:I
    :cond_29
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v1

    .line 1003
    .restart local v1       #firstChild:I
    :goto_31
    if-eq v1, v2, :cond_23

    .line 1005
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v3

    if-ne v3, p2, :cond_3e

    .line 1006
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    goto :goto_23

    .line 1004
    :cond_3e
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    goto :goto_31
.end method

.method public getTypedNextSibling(II)I
    .registers 7
    .parameter "nodeHandle"
    .parameter "nodeType"

    .prologue
    const/4 v2, -0x1

    .line 1155
    if-ne p1, v2, :cond_4

    .line 1164
    :cond_3
    :goto_3
    return v2

    .line 1157
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    .line 1159
    .local v1, node:I
    :cond_8
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_nextsib(I)I

    move-result v1

    if-eq v1, v2, :cond_1c

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_exptype(I)I

    move-result v0

    .local v0, eType:I
    if-eq v0, p2, :cond_1c

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v3

    if-ne v3, p2, :cond_8

    .line 1164
    .end local v0           #eType:I
    :cond_1c
    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeHandle(I)I

    move-result v2

    goto :goto_3
.end method

.method public abstract getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public hasChildNodes(I)Z
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 882
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    .line 883
    .local v1, identity:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->_firstch(I)I

    move-result v0

    .line 885
    .local v0, firstChild:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    const/4 v2, 0x1

    :goto_c
    return v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
.end method

.method protected indexNode(II)V
    .registers 10
    .parameter "expandedTypeID"
    .parameter "identity"

    .prologue
    const/4 v6, 0x0

    .line 320
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 321
    .local v0, ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v4

    .line 323
    .local v4, type:S
    const/4 v5, 0x1

    if-ne v5, v4, :cond_25

    .line 325
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v3

    .line 326
    .local v3, namespaceID:I
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result v2

    .line 328
    .local v2, localNameID:I
    invoke-virtual {p0, v3, v2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->ensureSizeOfIndex(II)V

    .line 330
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_elemIndexes:[[[I

    aget-object v5, v5, v3

    aget-object v1, v5, v2

    .line 332
    .local v1, index:[I
    aget v5, v1, v6

    aput p2, v1, v5

    .line 334
    aget v5, v1, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v6

    .line 336
    .end local v1           #index:[I
    .end local v2           #localNameID:I
    .end local v3           #namespaceID:I
    :cond_25
    return-void
.end method

.method public abstract isAttributeSpecified(I)Z
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 2142
    const/4 v0, 0x0

    return v0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .registers 3
    .parameter "documentHandle"

    .prologue
    .line 2159
    const/4 v0, 0x1

    return v0
.end method

.method public isNodeAfter(II)Z
    .registers 6
    .parameter "nodeHandle1"
    .parameter "nodeHandle2"

    .prologue
    const/4 v2, -0x1

    .line 2116
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v0

    .line 2117
    .local v0, index1:I
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->makeNodeIdentity(I)I

    move-result v1

    .line 2119
    .local v1, index2:I
    if-eq v0, v2, :cond_11

    if-eq v1, v2, :cond_11

    if-gt v0, v1, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 1908
    const/4 v0, 0x0

    return v0
.end method

.method public final makeNodeHandle(I)I
    .registers 4
    .parameter "nodeIdentity"

    .prologue
    const/4 v0, -0x1

    .line 904
    if-ne v0, p1, :cond_4

    .line 909
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    ushr-int/lit8 v1, p1, 0x10

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, p1

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method public final makeNodeIdentity(I)I
    .registers 8
    .parameter "nodeHandle"

    .prologue
    const v5, 0xffff

    const/4 v2, -0x1

    .line 931
    if-ne v2, p1, :cond_7

    .line 954
    :cond_6
    :goto_6
    return v2

    .line 933
    :cond_7
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    if-eqz v3, :cond_1f

    .line 939
    ushr-int/lit8 v1, p1, 0x10

    .line 945
    .local v1, whichDTMindex:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iget-object v3, v3, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v3, v3, v1

    if-ne v3, p0, :cond_6

    .line 948
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    iget-object v2, v2, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget v2, v2, v1

    and-int v3, p1, v5

    or-int/2addr v2, v3

    goto :goto_6

    .line 953
    .end local v1           #whichDTMindex:I
    :cond_1f
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    const/high16 v4, -0x1

    and-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(I)I

    move-result v0

    .line 954
    .local v0, whichDTMid:I
    if-eq v0, v2, :cond_6

    shl-int/lit8 v2, v0, 0x10

    and-int v3, p1, v5

    add-int/2addr v2, v3

    goto :goto_6
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 3
    .parameter "mgr"

    .prologue
    .line 2344
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    .line 2345
    instance-of v0, p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    if-eqz v0, :cond_a

    .line 2346
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .end local p1
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 2347
    :cond_a
    return-void
.end method

.method protected abstract nextNode()Z
.end method

.method protected popShouldStripWhitespace()V
    .registers 2

    .prologue
    .line 2297
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz v0, :cond_c

    .line 2298
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/BoolStack;->popAndTop()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    .line 2299
    :cond_c
    return-void
.end method

.method protected pushShouldStripWhitespace(Z)V
    .registers 3
    .parameter "shouldStrip"

    .prologue
    .line 2284
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    .line 2286
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz v0, :cond_b

    .line 2287
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->push(Z)Z

    .line 2288
    :cond_b
    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .registers 2
    .parameter "baseURI"

    .prologue
    .line 1930
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_documentBaseURI:Ljava/lang/String;

    .line 1931
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 3
    .parameter "featureId"
    .parameter "state"

    .prologue
    .line 863
    return-void
.end method

.method protected setShouldStripWhitespace(Z)V
    .registers 3
    .parameter "shouldStrip"

    .prologue
    .line 2311
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWS:Z

    .line 2313
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    if-eqz v0, :cond_b

    .line 2314
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->m_shouldStripWhitespaceStack:Lorg/apache/xml/utils/BoolStack;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/BoolStack;->setTop(Z)V

    .line 2315
    :cond_b
    return-void
.end method

.method public supportsPreStripping()Z
    .registers 2

    .prologue
    .line 2094
    const/4 v0, 0x1

    return v0
.end method
