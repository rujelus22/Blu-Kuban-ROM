.class public abstract Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementParallelTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    .line 51
    return-void
.end method

.method private getElementTime(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/ElementTime;
    .registers 8
    .parameter "node"

    .prologue
    .line 92
    move-object v3, p1

    .line 96
    .local v3, mNode:Lorg/w3c/dom/Node;
    const/4 v2, 0x0

    .line 98
    .local v2, mET:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 99
    .local v4, mNodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 101
    .local v1, mChildCount:I
    instance-of v5, v3, Lorg/w3c/dom/smil/ElementTime;

    if-eqz v5, :cond_12

    move-object v2, v3

    .line 102
    check-cast v2, Lorg/w3c/dom/smil/ElementTime;

    .line 108
    :cond_11
    return-object v2

    .line 104
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v1, :cond_11

    .line 105
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getElementTime(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/ElementTime;

    move-result-object v2

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .registers 24
    .parameter "instant"

    .prologue
    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, activeChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 145
    .local v7, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 146
    .local v8, childrenLen:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_e
    if-ge v11, v8, :cond_89

    .line 147
    const-wide/16 v14, 0x0

    .line 148
    .local v14, maxOffset:D
    const/4 v2, 0x0

    .line 149
    .local v2, active:Z
    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/ElementTime;

    .line 151
    .local v6, child:Lorg/w3c/dom/smil/ElementTime;
    invoke-interface {v6}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 152
    .local v5, beginList:Lorg/w3c/dom/smil/TimeList;
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v13

    .line 153
    .local v13, len:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_22
    if-ge v12, v13, :cond_4c

    .line 154
    invoke-interface {v5, v12}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 155
    .local v4, begin:Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v18

    if-eqz v18, :cond_49

    .line 156
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L

    mul-double v16, v18, v20

    .line 157
    .local v16, resolvedOffset:D
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_49

    cmpl-double v18, v16, v14

    if-ltz v18, :cond_49

    .line 158
    move-wide/from16 v14, v16

    .line 159
    const/4 v2, 0x1

    .line 153
    .end local v16           #resolvedOffset:D
    :cond_49
    add-int/lit8 v12, v12, 0x1

    goto :goto_22

    .line 164
    .end local v4           #begin:Lorg/w3c/dom/smil/Time;
    :cond_4c
    invoke-interface {v6}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v10

    .line 165
    .local v10, endList:Lorg/w3c/dom/smil/TimeList;
    invoke-interface {v10}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v13

    .line 166
    const/4 v12, 0x0

    :goto_55
    if-ge v12, v13, :cond_7f

    .line 167
    invoke-interface {v10, v12}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v9

    .line 168
    .local v9, end:Lorg/w3c/dom/smil/Time;
    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v18

    if-eqz v18, :cond_7c

    .line 169
    invoke-interface {v9}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v18

    const-wide v20, 0x408f400000000000L

    mul-double v16, v18, v20

    .line 170
    .restart local v16       #resolvedOffset:D
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v16, v18

    if-gtz v18, :cond_7c

    cmpl-double v18, v16, v14

    if-ltz v18, :cond_7c

    .line 171
    move-wide/from16 v14, v16

    .line 172
    const/4 v2, 0x0

    .line 166
    .end local v16           #resolvedOffset:D
    :cond_7c
    add-int/lit8 v12, v12, 0x1

    goto :goto_55

    .line 177
    .end local v9           #end:Lorg/w3c/dom/smil/Time;
    :cond_7f
    if-eqz v2, :cond_86

    .line 178
    check-cast v6, Lorg/w3c/dom/Node;

    .end local v6           #child:Lorg/w3c/dom/smil/ElementTime;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_86
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 181
    .end local v2           #active:Z
    .end local v5           #beginList:Lorg/w3c/dom/smil/TimeList;
    .end local v10           #endList:Lorg/w3c/dom/smil/TimeList;
    .end local v12           #j:I
    .end local v13           #len:I
    .end local v14           #maxOffset:D
    :cond_89
    new-instance v18, Lcom/android/mms/dom/NodeListImpl;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v18
.end method

.method public getDur()F
    .registers 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getDur()F

    move-result v0

    .line 83
    .local v0, dur:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_d

    .line 84
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getImplicitDuration()F

    move-result v0

    .line 86
    :cond_d
    return v0
.end method

.method public getEndSync()Ljava/lang/String;
    .registers 4

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v2, "endsync"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, endsync:Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_18

    .line 56
    :cond_10
    const-string v1, "last"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    .line 57
    const-string v0, "last"

    .line 67
    .end local v0           #endsync:Ljava/lang/String;
    :cond_17
    :goto_17
    return-object v0

    .line 59
    .restart local v0       #endsync:Ljava/lang/String;
    :cond_18
    const-string v1, "first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "last"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 66
    const-string v1, "last"

    invoke-virtual {p0, v1}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    .line 67
    const-string v0, "last"

    goto :goto_17
.end method

.method public getImplicitDuration()F
    .registers 11

    .prologue
    .line 112
    const/high16 v2, -0x4080

    .line 113
    .local v2, dur:F
    const-string v8, "last"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getEndSync()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 114
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 115
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_13
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_51

    .line 116
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getElementTime(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/ElementTime;

    move-result-object v0

    .line 117
    .local v0, child:Lorg/w3c/dom/smil/ElementTime;
    if-eqz v0, :cond_4e

    .line 118
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v5

    .line 119
    .local v5, endTimeList:Lorg/w3c/dom/smil/TimeList;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_28
    invoke-interface {v5}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_4e

    .line 120
    invoke-interface {v5, v7}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 121
    .local v4, endTime:Lorg/w3c/dom/smil/Time;
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getTimeType()I

    move-result v8

    if-nez v8, :cond_3b

    .line 123
    const/high16 v8, -0x4080

    .line 134
    .end local v0           #child:Lorg/w3c/dom/smil/ElementTime;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v4           #endTime:Lorg/w3c/dom/smil/Time;
    .end local v5           #endTimeList:Lorg/w3c/dom/smil/TimeList;
    .end local v6           #i:I
    .end local v7           #j:I
    :goto_3a
    return v8

    .line 125
    .restart local v0       #child:Lorg/w3c/dom/smil/ElementTime;
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v4       #endTime:Lorg/w3c/dom/smil/Time;
    .restart local v5       #endTimeList:Lorg/w3c/dom/smil/TimeList;
    .restart local v6       #i:I
    .restart local v7       #j:I
    :cond_3b
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 126
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v8

    double-to-float v3, v8

    .line 127
    .local v3, end:F
    cmpl-float v8, v3, v2

    if-lez v8, :cond_4b

    move v2, v3

    .line 119
    .end local v3           #end:F
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 115
    .end local v4           #endTime:Lorg/w3c/dom/smil/Time;
    .end local v5           #endTimeList:Lorg/w3c/dom/smil/TimeList;
    .end local v7           #j:I
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .end local v0           #child:Lorg/w3c/dom/smil/ElementTime;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v6           #i:I
    :cond_51
    move v8, v2

    .line 134
    goto :goto_3a
.end method

.method public setEndSync(Ljava/lang/String;)V
    .registers 6
    .parameter "endSync"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 73
    :cond_20
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementTimeImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string v1, "endsync"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void

    .line 75
    :cond_28
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported endsync value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
