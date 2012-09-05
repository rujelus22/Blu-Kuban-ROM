.class public Lorg/apache/xalan/templates/TemplateList;
.super Ljava/lang/Object;
.source "TemplateList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/TemplateList$1;,
        Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x508acbed134bd097L


# instance fields
.field private m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_namedTemplates:Ljava/util/Hashtable;

.field private m_patternTable:Ljava/util/Hashtable;

.field private m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x59

    const/4 v1, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 768
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    .line 777
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 781
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 785
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 789
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 793
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object v0
.end method

.method private addObjectIfNotFound(Ljava/lang/Object;Ljava/util/Vector;)V
    .registers 7
    .parameter "obj"
    .parameter "v"

    .prologue
    .line 742
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 743
    .local v2, n:I
    const/4 v0, 0x1

    .line 745
    .local v0, addIt:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_f

    .line 747
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_15

    .line 749
    const/4 v0, 0x0

    .line 755
    :cond_f
    if-eqz v0, :cond_14

    .line 757
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 759
    :cond_14
    return-void

    .line 745
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    .registers 5
    .parameter "head"
    .parameter "xctxt"
    .parameter "targetNode"
    .parameter "mode"

    .prologue
    .line 731
    return-void
.end method

.method private getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .registers 3
    .parameter "key"

    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object v0
.end method

.method private getNamedTemplates()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object v0
.end method

.method private getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D
    .registers 7
    .parameter "matchPat"

    .prologue
    .line 392
    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplate;->getPriority()D

    move-result-wide v1

    .line 394
    .local v1, priority:D
    const-wide/high16 v3, -0x10

    cmpl-double v3, v1, v3

    if-nez v3, :cond_1c

    .line 396
    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getStepPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    .line 398
    .local v0, ex:Lorg/apache/xpath/Expression;
    instance-of v3, v0, Lorg/apache/xpath/patterns/NodeTest;

    if-eqz v3, :cond_1c

    .line 400
    check-cast v0, Lorg/apache/xpath/patterns/NodeTest;

    .end local v0           #ex:Lorg/apache/xpath/Expression;
    invoke-virtual {v0}, Lorg/apache/xpath/patterns/NodeTest;->getDefaultScore()D

    move-result-wide v1

    .line 404
    .end local v1           #priority:D
    :cond_1c
    return-wide v1
.end method

.method private insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .registers 15
    .parameter "head"
    .parameter "item"
    .parameter "isWildCardInsert"

    .prologue
    .line 233
    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v6

    .line 235
    .local v6, priority:D
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v1

    .line 236
    .local v1, importLevel:I
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v0

    .line 237
    .local v0, docOrder:I
    move-object v3, p1

    .line 255
    .local v3, insertPoint:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_d
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v5

    .line 256
    .local v5, next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-nez v5, :cond_34

    .line 276
    :cond_13
    if-eqz v5, :cond_17

    if-ne v3, p1, :cond_76

    .line 278
    :cond_17
    invoke-direct {p0, v3}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v8

    .line 279
    .local v8, workPriority:D
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-le v1, v10, :cond_58

    .line 280
    const/4 v2, 0x1

    .line 297
    .end local v8           #workPriority:D
    .local v2, insertBefore:Z
    :goto_22
    if-eqz p3, :cond_80

    .line 299
    if-eqz v2, :cond_78

    .line 301
    invoke-virtual {p2, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 303
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setTargetString(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v4, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 332
    .end local v4           #key:Ljava/lang/String;
    .end local p2
    :goto_33
    return-object p2

    .line 260
    .end local v2           #insertBefore:Z
    .restart local p2
    :cond_34
    invoke-direct {p0, v5}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v8

    .line 261
    .restart local v8       #workPriority:D
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-gt v1, v10, :cond_13

    .line 263
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-ge v1, v10, :cond_46

    .line 264
    move-object v3, v5

    goto :goto_d

    .line 265
    :cond_46
    cmpl-double v10, v6, v8

    if-gtz v10, :cond_13

    .line 267
    cmpg-double v10, v6, v8

    if-gez v10, :cond_50

    .line 268
    move-object v3, v5

    goto :goto_d

    .line 269
    :cond_50
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v10

    if-ge v0, v10, :cond_13

    .line 272
    move-object v3, v5

    goto :goto_d

    .line 281
    :cond_58
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v10

    if-ge v1, v10, :cond_60

    .line 282
    const/4 v2, 0x0

    .restart local v2       #insertBefore:Z
    goto :goto_22

    .line 283
    .end local v2           #insertBefore:Z
    :cond_60
    cmpl-double v10, v6, v8

    if-lez v10, :cond_66

    .line 284
    const/4 v2, 0x1

    .restart local v2       #insertBefore:Z
    goto :goto_22

    .line 285
    .end local v2           #insertBefore:Z
    :cond_66
    cmpg-double v10, v6, v8

    if-gez v10, :cond_6c

    .line 286
    const/4 v2, 0x0

    .restart local v2       #insertBefore:Z
    goto :goto_22

    .line 287
    .end local v2           #insertBefore:Z
    :cond_6c
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v10

    if-lt v0, v10, :cond_74

    .line 288
    const/4 v2, 0x1

    .restart local v2       #insertBefore:Z
    goto :goto_22

    .line 290
    .end local v2           #insertBefore:Z
    :cond_74
    const/4 v2, 0x0

    .restart local v2       #insertBefore:Z
    goto :goto_22

    .line 293
    .end local v2           #insertBefore:Z
    .end local v8           #workPriority:D
    :cond_76
    const/4 v2, 0x0

    .restart local v2       #insertBefore:Z
    goto :goto_22

    .line 311
    :cond_78
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 312
    invoke-virtual {v3, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    move-object p2, p1

    .line 313
    goto :goto_33

    .line 318
    :cond_80
    if-eqz v2, :cond_9c

    .line 320
    invoke-virtual {p2, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 322
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v10

    if-nez v10, :cond_91

    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v10

    if-eqz v10, :cond_94

    .line 323
    :cond_91
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_33

    .line 325
    :cond_94
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    goto :goto_33

    .line 330
    :cond_9c
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 331
    invoke-virtual {v3, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    move-object p2, p1

    .line 332
    goto :goto_33
.end method

.method private insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V
    .registers 9
    .parameter "pattern"
    .parameter "template"

    .prologue
    .line 346
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, target:Ljava/lang/String;
    if-eqz v4, :cond_21

    .line 350
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, pstring:Ljava/lang/String;
    new-instance v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-direct {v0, p2, p1, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;-><init>(Lorg/apache/xalan/templates/ElemTemplate;Lorg/apache/xpath/patterns/StepPattern;Ljava/lang/String;)V

    .line 355
    .local v0, association:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result v2

    .line 356
    .local v2, isWildCard:Z
    if-eqz v2, :cond_22

    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 360
    .local v1, head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_1b
    if-nez v1, :cond_2b

    .line 362
    if-eqz v2, :cond_27

    .line 363
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 372
    .end local v0           #association:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v1           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v2           #isWildCard:Z
    .end local v3           #pstring:Ljava/lang/String;
    :cond_21
    :goto_21
    return-void

    .line 356
    .restart local v0       #association:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .restart local v2       #isWildCard:Z
    .restart local v3       #pstring:Ljava/lang/String;
    :cond_22
    invoke-direct {p0, v4}, Lorg/apache/xalan/templates/TemplateList;->getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_1b

    .line 365
    .restart local v1       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_27
    invoke-direct {p0, v4, v0}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    goto :goto_21

    .line 369
    :cond_2b
    const/4 v5, 0x0

    invoke-direct {p0, v1, v0, v5}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_21
.end method

.method private putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V
    .registers 4
    .parameter "key"
    .parameter "assoc"

    .prologue
    .line 845
    const-string v0, "#text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 846
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 852
    :cond_a
    :goto_a
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    return-void

    .line 847
    :cond_10
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 848
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_a

    .line 849
    :cond_1b
    const-string v0, "#comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 850
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_a
.end method

.method private setNamedTemplates(Ljava/util/Hashtable;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 820
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    .line 821
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 7
    .parameter "sroot"

    .prologue
    .line 182
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v3, :cond_2a

    .line 184
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 186
    .local v0, associations:Ljava/util/Enumeration;
    :cond_a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 188
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 190
    .local v1, head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 192
    .local v2, wild:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_18
    if-eqz v2, :cond_a

    .line 196
    :try_start_1a
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_24
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1a .. :try_end_24} :catch_2b

    move-result-object v1

    .line 201
    :goto_25
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v2

    goto :goto_18

    .line 211
    .end local v0           #associations:Ljava/util/Enumeration;
    .end local v1           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v2           #wild:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_2a
    return-void

    .line 199
    .restart local v0       #associations:Ljava/util/Enumeration;
    .restart local v1       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .restart local v2       #wild:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :catch_2b
    move-exception v3

    goto :goto_25
.end method

.method dumpAssociationTables()V
    .registers 6

    .prologue
    .line 136
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 138
    .local v0, associations:Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 140
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 143
    .local v1, head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_12
    if-eqz v1, :cond_49

    .line 145
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_12

    .line 151
    :cond_49
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n....."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 154
    .end local v1           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_51
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 156
    .restart local v1       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "wild card list: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 158
    :goto_5a
    if-eqz v1, :cond_91

    .line 160
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_5a

    .line 166
    :cond_91
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\n....."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .registers 8
    .parameter "xctxt"
    .parameter "targetNode"
    .parameter "dtm"

    .prologue
    .line 433
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v1

    .line 436
    .local v1, targetNodeType:S
    packed-switch v1, :pswitch_data_48

    .line 465
    :pswitch_7
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 469
    .local v0, head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_13
    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_17
    return-object v0

    .line 440
    :pswitch_18
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 442
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_13

    .line 445
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_25
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 446
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_13

    .line 449
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_28
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 451
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_13

    .line 453
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_35
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 455
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_13

    .line 457
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_42
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 458
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_13

    .line 461
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_45
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 462
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_13

    .line 436
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_25
        :pswitch_25
        :pswitch_28
        :pswitch_28
        :pswitch_35
        :pswitch_42
        :pswitch_45
        :pswitch_7
        :pswitch_45
    .end packed-switch
.end method

.method public getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 3
    .parameter "qname"

    .prologue
    .line 416
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object v0
.end method

.method public getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 13
    .parameter "xctxt"
    .parameter "targetNode"
    .parameter "mode"
    .parameter "maxImportLevel"
    .parameter "endImportLevel"
    .parameter "quietConflictWarnings"
    .parameter "dtm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0, p1, p2, p7}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v0

    .line 668
    .local v0, head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-eqz v0, :cond_22

    .line 673
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    .line 674
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 679
    :cond_d
    const/4 v3, -0x1

    if-le p4, v3, :cond_24

    :try_start_10
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v3

    if-le v3, p4, :cond_24

    .line 697
    :cond_16
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_57

    move-result-object v0

    if-nez v0, :cond_d

    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    :cond_22
    move-object v1, v2

    .line 706
    :goto_23
    return-object v1

    .line 683
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_57

    move-result v3

    sub-int v4, p4, p5

    if-gt v3, v4, :cond_34

    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    move-object v1, v2

    goto :goto_23

    .line 685
    :cond_34
    :try_start_34
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 686
    .local v1, template:Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 688
    iget-object v3, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_16

    invoke-virtual {v0, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 691
    if-eqz p6, :cond_50

    .line 692
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_50
    .catchall {:try_start_34 .. :try_end_50} :catchall_57

    .line 701
    :cond_50
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_23

    .line 701
    .end local v1           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_57
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2
.end method

.method public getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 10
    .parameter "xctxt"
    .parameter "targetNode"
    .parameter "mode"
    .parameter "quietConflictWarnings"
    .parameter "dtm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0, p1, p2, p5}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v0

    .line 603
    .local v0, head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-eqz v0, :cond_3b

    .line 608
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    .line 609
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 614
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 615
    .local v1, template:Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 617
    iget-object v2, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v2, v3, :cond_2f

    invoke-virtual {v0, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 620
    if-eqz p4, :cond_28

    .line 621
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_3d

    .line 630
    :cond_28
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 635
    .end local v1           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :goto_2e
    return-object v1

    .line 626
    .restart local v1       #template:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3d

    move-result-object v0

    if-nez v0, :cond_c

    .line 630
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 635
    .end local v1           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_3b
    const/4 v1, 0x0

    goto :goto_2e

    .line 630
    :catchall_3d
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2
.end method

.method public getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 13
    .parameter "xctxt"
    .parameter "targetNode"
    .parameter "expTypeID"
    .parameter "mode"
    .parameter "maxImportLevel"
    .parameter "quietConflictWarnings"
    .parameter "dtm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 504
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v3

    packed-switch v3, :pswitch_data_88

    .line 533
    :pswitch_8
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 537
    .local v0, head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_14
    if-nez v0, :cond_4c

    .line 539
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 540
    if-nez v0, :cond_4c

    move-object v1, v2

    .line 575
    :goto_1b
    return-object v1

    .line 508
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_1c
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p3}, Lorg/apache/xml/dtm/DTM;->getLocalNameFromExpandedNameID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 510
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_14

    .line 513
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_29
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 514
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_14

    .line 517
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_2c
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 519
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_14

    .line 521
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_39
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 523
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_14

    .line 525
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_46
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 526
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_14

    .line 529
    .end local v0           #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_49
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 530
    .restart local v0       #head:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_14

    .line 547
    :cond_4c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    .line 552
    :cond_4f
    const/4 v3, -0x1

    if-le p5, v3, :cond_63

    :try_start_52
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v3

    if-le v3, p5, :cond_63

    .line 568
    :cond_58
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_83

    move-result-object v0

    if-nez v0, :cond_4f

    .line 572
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    move-object v1, v2

    .line 575
    goto :goto_1b

    .line 556
    :cond_63
    :try_start_63
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 557
    .local v1, template:Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 559
    iget-object v3, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p1, p2, p7, p3}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_58

    invoke-virtual {v0, p4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 562
    if-eqz p6, :cond_7f

    .line 563
    invoke-direct {p0, v0, p1, p2, p4}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_7f
    .catchall {:try_start_63 .. :try_end_7f} :catchall_83

    .line 572
    :cond_7f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_1b

    .end local v1           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_83
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    throw v2

    .line 504
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_29
        :pswitch_29
        :pswitch_2c
        :pswitch_2c
        :pswitch_39
        :pswitch_46
        :pswitch_49
        :pswitch_8
        :pswitch_49
    .end packed-switch
.end method

.method public getWalker()Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    .registers 3

    .prologue
    .line 715
    new-instance v0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList$1;)V

    return-object v0
.end method

.method public setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .registers 16
    .parameter "template"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 66
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v4

    .line 68
    .local v4, matchXPath:Lorg/apache/xpath/XPath;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v9

    if-nez v9, :cond_19

    if-nez v4, :cond_19

    .line 70
    const-string v9, "ER_NEED_NAME_OR_MATCH_ATTRIB"

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, "xsl:template"

    aput-object v11, v10, v12

    invoke-virtual {p1, v9, v10}, Lorg/apache/xalan/templates/ElemTemplate;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_19
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v9

    if-eqz v9, :cond_36

    .line 76
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    .line 77
    .local v1, existingTemplate:Lorg/apache/xalan/templates/ElemTemplate;
    if-nez v1, :cond_46

    .line 79
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v1           #existingTemplate:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_36
    :goto_36
    if-eqz v4, :cond_45

    .line 101
    invoke-virtual {v4}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    .line 103
    .local v3, matchExpr:Lorg/apache/xpath/Expression;
    instance-of v9, v3, Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v9, :cond_72

    .line 105
    check-cast v3, Lorg/apache/xpath/patterns/StepPattern;

    .end local v3           #matchExpr:Lorg/apache/xpath/Expression;
    invoke-direct {p0, v3, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 124
    :cond_45
    return-void

    .line 83
    .restart local v1       #existingTemplate:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_46
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v0

    .line 85
    .local v0, existingPrecedence:I
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v6

    .line 86
    .local v6, newPrecedence:I
    if-le v6, v0, :cond_62

    .line 89
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v10

    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    .line 91
    :cond_62
    if-ne v6, v0, :cond_36

    .line 92
    const-string v9, "ER_DUPLICATE_NAMED_TEMPLATE"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {p1, v9, v10}, Lorg/apache/xalan/templates/ElemTemplate;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36

    .line 107
    .end local v0           #existingPrecedence:I
    .end local v1           #existingTemplate:Lorg/apache/xalan/templates/ElemTemplate;
    .end local v6           #newPrecedence:I
    .restart local v3       #matchExpr:Lorg/apache/xpath/Expression;
    :cond_72
    instance-of v9, v3, Lorg/apache/xpath/patterns/UnionPattern;

    if-eqz v9, :cond_45

    move-object v8, v3

    .line 109
    check-cast v8, Lorg/apache/xpath/patterns/UnionPattern;

    .line 110
    .local v8, upat:Lorg/apache/xpath/patterns/UnionPattern;
    invoke-virtual {v8}, Lorg/apache/xpath/patterns/UnionPattern;->getPatterns()[Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v7

    .line 111
    .local v7, pats:[Lorg/apache/xpath/patterns/StepPattern;
    array-length v5, v7

    .line 113
    .local v5, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7f
    if-ge v2, v5, :cond_45

    .line 115
    aget-object v9, v7, v2

    invoke-direct {p0, v9, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f
.end method
