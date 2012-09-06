.class public Lcom/google/research/handwriting/base/InkUtils;
.super Ljava/lang/Object;
.source "InkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method public static getDelayedStrokeOrder(Lcom/google/research/handwriting/base/StrokeList;)Ljava/util/List;
    .registers 10
    .parameter "ink"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/research/handwriting/base/StrokeList;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->cuts()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .local v3, ranksAndStrokeIds:Ljava/util/List;,"Ljava/util/List<Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 239
    .local v0, currentStroke:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->cuts()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v1, v6, :cond_45

    .line 240
    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v6, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;

    new-instance v7, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-static {p0, v0}, Lcom/google/research/handwriting/base/InkUtils;->getSubInk(Lcom/google/research/handwriting/base/StrokeList;Ljava/util/TreeSet;)Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/StrokeList;)V

    invoke-static {v7}, Lcom/google/research/handwriting/base/InkUtils;->getRank(Lcom/google/research/handwriting/base/BoundingBox;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v7, v1}, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;-><init>(FI)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 247
    :cond_45
    new-instance v6, Lcom/google/research/handwriting/base/InkUtils$1;

    invoke-direct {v6}, Lcom/google/research/handwriting/base/InkUtils$1;-><init>()V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 254
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;

    .line 256
    .local v5, rs:Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;
    iget v6, v5, Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 258
    .end local v5           #rs:Lcom/google/research/handwriting/base/InkUtils$FloatStrokeIdPair;
    :cond_6c
    return-object v4
.end method

.method private static getRank(Lcom/google/research/handwriting/base/BoundingBox;)Ljava/lang/Float;
    .registers 5
    .parameter "bb"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f40

    invoke-virtual {p0}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3e80

    invoke-virtual {p0}, Lcom/google/research/handwriting/base/BoundingBox;->right()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static getSubInk(Lcom/google/research/handwriting/base/StrokeList;Ljava/util/TreeSet;)Lcom/google/research/handwriting/base/StrokeList;
    .registers 22
    .parameter "strokes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/research/handwriting/base/StrokeList;",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/research/handwriting/base/StrokeList;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, substrokeIndices:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v15, Lcom/google/research/handwriting/base/StrokeList;

    invoke-direct {v15}, Lcom/google/research/handwriting/base/StrokeList;-><init>()V

    .line 170
    .local v15, subink:Lcom/google/research/handwriting/base/StrokeList;
    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->cuts()Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v11

    .line 171
    .local v11, numCuts:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v12

    .line 172
    .local v12, numStrokes:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/TreeSet;->size()I

    move-result v13

    .line 174
    .local v13, numSubstrokes:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/TreeSet;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 175
    .local v16, substrokes:[I
    const/4 v3, 0x0

    .line 176
    .local v3, c:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 177
    .local v7, i:Ljava/lang/Integer;
    add-int/lit8 v4, v3, 0x1

    .end local v3           #c:I
    .local v4, c:I
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v16, v3

    move v3, v4

    .end local v4           #c:I
    .restart local v3       #c:I
    goto :goto_24

    .line 180
    .end local v7           #i:Ljava/lang/Integer;
    :cond_3a
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3b
    if-ge v7, v13, :cond_fb

    .line 182
    aget v6, v16, v7

    .line 183
    .local v6, firstSubstroke:I
    :goto_3f
    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v18

    if-ge v0, v13, :cond_58

    add-int/lit8 v18, v7, 0x1

    aget v18, v16, v18

    aget v19, v16, v7

    sub-int v18, v18, v19

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_58

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 186
    :cond_58
    aget v9, v16, v7

    .line 190
    .local v9, lastSubstroke:I
    if-nez v6, :cond_dd

    .line 191
    new-instance v2, Lcom/google/research/handwriting/base/StrokeList$Cut;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/google/research/handwriting/base/StrokeList$Cut;-><init>(II)V

    .line 195
    .local v2, begin:Lcom/google/research/handwriting/base/StrokeList$Cut;
    :goto_69
    if-ne v9, v11, :cond_ea

    .line 196
    new-instance v5, Lcom/google/research/handwriting/base/StrokeList$Cut;

    add-int/lit8 v18, v12, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->getLast()Lcom/google/research/handwriting/base/Stroke;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/google/research/handwriting/base/StrokeList$Cut;-><init>(II)V

    .line 201
    .local v5, end:Lcom/google/research/handwriting/base/StrokeList$Cut;
    :goto_7e
    iget v0, v2, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/base/StrokeList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/research/handwriting/base/Stroke;

    .line 202
    .local v14, sourceStroke:Lcom/google/research/handwriting/base/Stroke;
    new-instance v17, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct/range {v17 .. v17}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    .line 203
    .local v17, targetStroke:Lcom/google/research/handwriting/base/Stroke;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    .line 204
    :goto_96
    invoke-static {v2, v5}, Lcom/google/research/handwriting/base/InkUtils;->isBefore(Lcom/google/research/handwriting/base/StrokeList$Cut;Lcom/google/research/handwriting/base/StrokeList$Cut;)Z

    move-result v18

    if-eqz v18, :cond_f7

    .line 205
    iget v0, v2, Lcom/google/research/handwriting/base/StrokeList$Cut;->point:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/google/research/handwriting/base/Stroke;->get(I)Lcom/google/research/handwriting/base/Stroke$Point;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/research/handwriting/base/Stroke;->addPoint(Lcom/google/research/handwriting/base/Stroke$Point;)V

    .line 206
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/research/handwriting/base/InkUtils;->next(Lcom/google/research/handwriting/base/StrokeList;Lcom/google/research/handwriting/base/StrokeList$Cut;)Lcom/google/research/handwriting/base/StrokeList$Cut;

    move-result-object v10

    .line 207
    .local v10, nextPoint:Lcom/google/research/handwriting/base/StrokeList$Cut;
    iget v0, v10, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    move/from16 v18, v0

    iget v0, v2, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_db

    invoke-static {v10, v5}, Lcom/google/research/handwriting/base/InkUtils;->isBefore(Lcom/google/research/handwriting/base/StrokeList$Cut;Lcom/google/research/handwriting/base/StrokeList$Cut;)Z

    move-result v18

    if-eqz v18, :cond_db

    .line 208
    iget v0, v10, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/base/StrokeList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #sourceStroke:Lcom/google/research/handwriting/base/Stroke;
    check-cast v14, Lcom/google/research/handwriting/base/Stroke;

    .line 209
    .restart local v14       #sourceStroke:Lcom/google/research/handwriting/base/Stroke;
    new-instance v17, Lcom/google/research/handwriting/base/Stroke;

    .end local v17           #targetStroke:Lcom/google/research/handwriting/base/Stroke;
    invoke-direct/range {v17 .. v17}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    .line 210
    .restart local v17       #targetStroke:Lcom/google/research/handwriting/base/Stroke;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_db
    move-object v2, v10

    .line 213
    goto :goto_96

    .line 193
    .end local v2           #begin:Lcom/google/research/handwriting/base/StrokeList$Cut;
    .end local v5           #end:Lcom/google/research/handwriting/base/StrokeList$Cut;
    .end local v10           #nextPoint:Lcom/google/research/handwriting/base/StrokeList$Cut;
    .end local v14           #sourceStroke:Lcom/google/research/handwriting/base/Stroke;
    .end local v17           #targetStroke:Lcom/google/research/handwriting/base/Stroke;
    :cond_dd
    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->cuts()Ljava/util/LinkedList;

    move-result-object v18

    add-int/lit8 v19, v6, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/handwriting/base/StrokeList$Cut;

    .restart local v2       #begin:Lcom/google/research/handwriting/base/StrokeList$Cut;
    goto :goto_69

    .line 198
    :cond_ea
    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->cuts()Ljava/util/LinkedList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/handwriting/base/StrokeList$Cut;

    .restart local v5       #end:Lcom/google/research/handwriting/base/StrokeList$Cut;
    goto :goto_7e

    .line 180
    .restart local v14       #sourceStroke:Lcom/google/research/handwriting/base/Stroke;
    .restart local v17       #targetStroke:Lcom/google/research/handwriting/base/Stroke;
    :cond_f7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3b

    .line 215
    .end local v2           #begin:Lcom/google/research/handwriting/base/StrokeList$Cut;
    .end local v5           #end:Lcom/google/research/handwriting/base/StrokeList$Cut;
    .end local v6           #firstSubstroke:I
    .end local v9           #lastSubstroke:I
    .end local v14           #sourceStroke:Lcom/google/research/handwriting/base/Stroke;
    .end local v17           #targetStroke:Lcom/google/research/handwriting/base/Stroke;
    :cond_fb
    return-object v15
.end method

.method private static isBefore(Lcom/google/research/handwriting/base/StrokeList$Cut;Lcom/google/research/handwriting/base/StrokeList$Cut;)Z
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 142
    iget v0, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    iget v1, p1, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    iget v1, p1, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/google/research/handwriting/base/StrokeList$Cut;->point:I

    iget v1, p1, Lcom/google/research/handwriting/base/StrokeList$Cut;->point:I

    if-ge v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static moveAndScale(Lcom/google/research/handwriting/base/StrokeList;FFF)Lcom/google/research/handwriting/base/StrokeList;
    .registers 14
    .parameter "ink"
    .parameter "x"
    .parameter "y"
    .parameter "scale"

    .prologue
    .line 119
    new-instance v3, Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v6

    invoke-direct {v3, v6}, Lcom/google/research/handwriting/base/StrokeList;-><init>(I)V

    .line 120
    .local v3, result:Lcom/google/research/handwriting/base/StrokeList;
    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/research/handwriting/base/Stroke;

    .line 121
    .local v4, s:Lcom/google/research/handwriting/base/Stroke;
    new-instance v5, Lcom/google/research/handwriting/base/Stroke;

    invoke-virtual {v4}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/google/research/handwriting/base/Stroke;-><init>(I)V

    .line 122
    .local v5, targets:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual {v4}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 123
    .local v2, p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v6, v2, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    add-float/2addr v6, p1

    mul-float/2addr v6, p3

    iget v7, v2, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    add-float/2addr v7, p2

    mul-float/2addr v7, p3

    iget v8, v2, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    iget v9, v2, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    goto :goto_26

    .line 125
    .end local v2           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_42
    invoke-virtual {v3, v5}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 127
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #s:Lcom/google/research/handwriting/base/Stroke;
    .end local v5           #targets:Lcom/google/research/handwriting/base/Stroke;
    :cond_46
    return-object v3
.end method

.method private static next(Lcom/google/research/handwriting/base/StrokeList;Lcom/google/research/handwriting/base/StrokeList$Cut;)Lcom/google/research/handwriting/base/StrokeList$Cut;
    .registers 7
    .parameter "strokes"
    .parameter "c"

    .prologue
    .line 151
    iget v2, p1, Lcom/google/research/handwriting/base/StrokeList$Cut;->point:I

    add-int/lit8 v0, v2, 0x1

    .line 152
    .local v0, p:I
    iget v1, p1, Lcom/google/research/handwriting/base/StrokeList$Cut;->stroke:I

    .line 153
    .local v1, s:I
    invoke-virtual {p0, v1}, Lcom/google/research/handwriting/base/StrokeList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/handwriting/base/Stroke;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v2

    if-lt v0, v2, :cond_15

    .line 154
    const/4 v0, 0x0

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 157
    :cond_15
    new-instance v2, Lcom/google/research/handwriting/base/StrokeList$Cut;

    iget v3, p1, Lcom/google/research/handwriting/base/StrokeList$Cut;->cost:F

    iget-object v4, p1, Lcom/google/research/handwriting/base/StrokeList$Cut;->type:Lcom/google/research/handwriting/base/StrokeList$Cut$CutType;

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/google/research/handwriting/base/StrokeList$Cut;-><init>(IIFLcom/google/research/handwriting/base/StrokeList$Cut$CutType;)V

    return-object v2
.end method

.method public static normalizeHeuristic(Lcom/google/research/handwriting/base/StrokeList;FFF)Lcom/google/research/handwriting/base/StrokeList;
    .registers 18
    .parameter "ink"
    .parameter "writingGuideWidth"
    .parameter "writingGuideHeight"
    .parameter "maxStretch"

    .prologue
    .line 73
    const/4 v1, 0x1

    .line 74
    .local v1, hasGuide:Z
    const/high16 v11, 0x80

    cmpg-float v11, p2, v11

    if-ltz v11, :cond_d

    const/high16 v11, 0x80

    cmpg-float v11, p2, v11

    if-gez v11, :cond_e

    .line 75
    :cond_d
    const/4 v1, 0x0

    .line 77
    :cond_e
    new-instance v0, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v0, p0}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/StrokeList;)V

    .line 79
    .local v0, bb:Lcom/google/research/handwriting/base/BoundingBox;
    move/from16 v10, p2

    .line 80
    .local v10, yRangeG:F
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v4

    .line 81
    .local v4, xMinG:F
    const/4 v7, 0x0

    .line 83
    .local v7, yMinG:F
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->getHeight()F

    move-result v9

    .line 84
    .local v9, yRangeB:F
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v3

    .line 85
    .local v3, xMinB:F
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->top()F

    move-result v6

    .line 87
    .local v6, yMinB:F
    move v8, v10

    .line 88
    .local v8, yRange:F
    move v2, v4

    .line 89
    .local v2, xMin:F
    move v5, v7

    .line 91
    .local v5, yMin:F
    if-eqz v1, :cond_32

    cmpg-float v11, v10, v9

    if-gez v11, :cond_32

    .line 92
    move v8, v9

    .line 93
    move v2, v3

    .line 94
    move v5, v6

    .line 97
    :cond_32
    const/high16 v11, 0x3f80

    cmpg-float v11, p3, v11

    if-gez v11, :cond_3a

    .line 98
    const/high16 p3, 0x3f80

    .line 101
    :cond_3a
    if-eqz v1, :cond_42

    mul-float v11, p3, v9

    cmpl-float v11, v10, v11

    if-lez v11, :cond_58

    .line 102
    :cond_42
    mul-float v8, p3, v9

    .line 103
    const/high16 v11, 0x3f00

    const/high16 v12, 0x3f80

    sub-float v12, p3, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v9

    sub-float v2, v3, v11

    .line 104
    const/high16 v11, 0x3f00

    const/high16 v12, 0x3f80

    sub-float v12, p3, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v9

    sub-float v5, v6, v11

    .line 106
    :cond_58
    neg-float v11, v2

    neg-float v12, v5

    const/high16 v13, 0x3f80

    div-float/2addr v13, v8

    invoke-static {p0, v11, v12, v13}, Lcom/google/research/handwriting/base/InkUtils;->moveAndScale(Lcom/google/research/handwriting/base/StrokeList;FFF)Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v11

    return-object v11
.end method

.method public static normalizeSizeXY(Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/base/StrokeList;
    .registers 14
    .parameter "ink"

    .prologue
    .line 34
    new-instance v5, Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v9

    invoke-direct {v5, v9}, Lcom/google/research/handwriting/base/StrokeList;-><init>(I)V

    .line 35
    .local v5, result:Lcom/google/research/handwriting/base/StrokeList;
    new-instance v0, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v0, p0}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/StrokeList;)V

    .line 36
    .local v0, bb:Lcom/google/research/handwriting/base/BoundingBox;
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->getWidth()F

    move-result v8

    .line 37
    .local v8, width:F
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->getHeight()F

    move-result v1

    .line 38
    .local v1, height:F
    invoke-virtual {p0}, Lcom/google/research/handwriting/base/StrokeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/handwriting/base/Stroke;

    .line 39
    .local v6, s:Lcom/google/research/handwriting/base/Stroke;
    new-instance v7, Lcom/google/research/handwriting/base/Stroke;

    invoke-virtual {v6}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v9

    invoke-direct {v7, v9}, Lcom/google/research/handwriting/base/Stroke;-><init>(I)V

    .line 40
    .local v7, targets:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual {v6}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 41
    .local v4, p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v9, v4, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v10

    sub-float/2addr v9, v10

    div-float/2addr v9, v8

    iget v10, v4, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->top()F

    move-result v11

    sub-float/2addr v10, v11

    div-float/2addr v10, v1

    iget v11, v4, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    iget v12, v4, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    invoke-virtual {v7, v9, v10, v11, v12}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    goto :goto_33

    .line 43
    .end local v4           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_57
    invoke-virtual {v5, v7}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 45
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #s:Lcom/google/research/handwriting/base/Stroke;
    .end local v7           #targets:Lcom/google/research/handwriting/base/Stroke;
    :cond_5b
    return-object v5
.end method

.method public static normalizeWritingGuide(Lcom/google/research/handwriting/base/StrokeList;FF)Lcom/google/research/handwriting/base/StrokeList;
    .registers 8
    .parameter "ink"
    .parameter "writingGuideWidth"
    .parameter "writingGuideHeight"

    .prologue
    const-wide v3, 0x3eb0c6f7a0b5ed8dL

    .line 63
    float-to-double v1, p2

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_f

    float-to-double v1, p2

    cmpg-double v1, v1, v3

    if-gez v1, :cond_14

    .line 64
    :cond_f
    invoke-static {p0}, Lcom/google/research/handwriting/base/InkUtils;->normalizeY(Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v1

    .line 67
    :goto_13
    return-object v1

    .line 66
    :cond_14
    new-instance v0, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v0, p0}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/StrokeList;)V

    .line 67
    .local v0, bb:Lcom/google/research/handwriting/base/BoundingBox;
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    div-float/2addr v3, p2

    invoke-static {p0, v1, v2, v3}, Lcom/google/research/handwriting/base/InkUtils;->moveAndScale(Lcom/google/research/handwriting/base/StrokeList;FFF)Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v1

    goto :goto_13
.end method

.method public static normalizeY(Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/base/StrokeList;
    .registers 2
    .parameter "ink"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/research/handwriting/base/InkUtils;->normalizeY(Lcom/google/research/handwriting/base/StrokeList;F)Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeY(Lcom/google/research/handwriting/base/StrokeList;F)Lcom/google/research/handwriting/base/StrokeList;
    .registers 9
    .parameter "ink"
    .parameter "stretchFactor"

    .prologue
    .line 53
    new-instance v0, Lcom/google/research/handwriting/base/BoundingBox;

    invoke-direct {v0, p0}, Lcom/google/research/handwriting/base/BoundingBox;-><init>(Lcom/google/research/handwriting/base/StrokeList;)V

    .line 54
    .local v0, bb:Lcom/google/research/handwriting/base/BoundingBox;
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->getHeight()F

    move-result v3

    .line 55
    .local v3, yRange:F
    mul-float v1, v3, p1

    .line 56
    .local v1, stretch:F
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->top()F

    move-result v2

    .line 57
    .local v2, yMin:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 58
    invoke-virtual {v0}, Lcom/google/research/handwriting/base/BoundingBox;->left()F

    move-result v4

    neg-float v4, v4

    neg-float v5, v2

    const/high16 v6, 0x3f80

    div-float/2addr v6, v3

    invoke-static {p0, v4, v5, v6}, Lcom/google/research/handwriting/base/InkUtils;->moveAndScale(Lcom/google/research/handwriting/base/StrokeList;FFF)Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v4

    return-object v4
.end method

.method public static resampleLinearInterpolation(Lcom/google/research/handwriting/base/StrokeList;FI)Lcom/google/research/handwriting/base/StrokeList;
    .registers 36
    .parameter "ink"
    .parameter "delta"
    .parameter "maxResampleFactor"

    .prologue
    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v28

    if-nez v28, :cond_9

    .line 277
    const/16 v24, 0x0

    .line 350
    :cond_8
    return-object v24

    .line 280
    :cond_9
    new-instance v24, Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v28

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/research/handwriting/base/StrokeList;-><init>(I)V

    .line 282
    .local v24, resampledInk:Lcom/google/research/handwriting/base/StrokeList;
    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/research/handwriting/base/Stroke;

    .line 283
    .local v26, stroke:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual/range {v26 .. v26}, Lcom/google/research/handwriting/base/Stroke;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_1a

    .line 287
    invoke-virtual/range {v26 .. v26}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v10, v0, [F

    .line 288
    .local v10, deltas:[F
    invoke-virtual/range {v26 .. v26}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v6, v0, [F

    .line 292
    .local v6, cumDeltas:[F
    const/16 v23, 0x0

    .line 293
    .local v23, prevP:Lcom/google/research/handwriting/base/Stroke$Point;
    const/4 v15, 0x0

    .line 294
    .local v15, i:I
    invoke-virtual/range {v26 .. v26}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_43
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_88

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 295
    .local v22, p:Lcom/google/research/handwriting/base/Stroke$Point;
    if-eqz v23, :cond_83

    .line 296
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    move/from16 v29, v0

    sub-float v8, v28, v29

    .line 297
    .local v8, deltaX:F
    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    move/from16 v29, v0

    sub-float v9, v28, v29

    .line 298
    .local v9, deltaY:F
    mul-float v28, v8, v8

    mul-float v29, v9, v9

    add-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v28

    aput v28, v10, v15

    .line 299
    add-int/lit8 v28, v15, -0x1

    aget v28, v6, v28

    aget v29, v10, v15

    add-float v28, v28, v29

    aput v28, v6, v15

    .line 302
    .end local v8           #deltaX:F
    .end local v9           #deltaY:F
    :cond_83
    move-object/from16 v23, v22

    .line 303
    add-int/lit8 v15, v15, 0x1

    goto :goto_43

    .line 305
    .end local v22           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_88
    array-length v0, v6

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget v27, v6, v28

    .line 308
    .local v27, strokeLength:F
    div-float v28, v27, p1

    invoke-static/range {v28 .. v28}, Landroid/util/FloatMath;->ceil(F)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    .line 309
    .local v21, nSamplesMinusOne:I
    if-lez p2, :cond_b2

    add-int/lit8 v28, v21, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v29

    mul-int v29, v29, p2

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_b2

    .line 310
    invoke-virtual/range {v26 .. v26}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v28

    mul-int v28, v28, p2

    add-int/lit8 v21, v28, -0x1

    .line 313
    :cond_b2
    const/4 v5, 0x0

    .line 314
    .local v5, actualDelta:F
    if-lez v21, :cond_bc

    .line 315
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v5, v27, v28

    .line 317
    :cond_bc
    new-instance v25, Lcom/google/research/handwriting/base/Stroke;

    add-int/lit8 v28, v21, 0x1

    invoke-virtual/range {v26 .. v26}, Lcom/google/research/handwriting/base/Stroke;->isPenDown()Z

    move-result v29

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/base/Stroke;-><init>(IZ)V

    .line 318
    .local v25, resampledStroke:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual/range {v24 .. v25}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual/range {v26 .. v26}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 322
    .local v19, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/research/handwriting/base/Stroke$Point;>;"
    const/16 v18, 0x0

    .line 323
    .local v18, inputIdx:I
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 324
    .local v14, first:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v0, v14, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    move/from16 v28, v0

    iget v0, v14, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    move/from16 v29, v0

    iget v0, v14, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    move/from16 v30, v0

    iget v0, v14, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    move/from16 v31, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    .line 326
    const/4 v7, 0x0

    .line 328
    .local v7, currentPosition:F
    move-object/from16 v22, v14

    .line 329
    .restart local v22       #p:Lcom/google/research/handwriting/base/Stroke$Point;
    const/16 v23, 0x0

    .line 330
    const/16 v20, 0x1

    .local v20, n:I
    :goto_100
    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1a

    .line 331
    add-float/2addr v7, v5

    .line 332
    :goto_107
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_11e

    aget v28, v6, v18

    cmpl-float v28, v7, v28

    if-lez v28, :cond_11e

    .line 333
    add-int/lit8 v18, v18, 0x1

    .line 334
    move-object/from16 v23, v22

    .line 335
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .end local v22           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    check-cast v22, Lcom/google/research/handwriting/base/Stroke$Point;

    .restart local v22       #p:Lcom/google/research/handwriting/base/Stroke$Point;
    goto :goto_107

    .line 340
    :cond_11e
    add-int/lit8 v28, v18, -0x1

    aget v28, v6, v28

    sub-float v28, v7, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 341
    .local v11, distPredecessor:F
    aget v28, v6, v18

    sub-float v28, v28, v7

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 342
    .local v12, distSuccessor:F
    add-float v13, v11, v12

    .line 344
    .local v13, distSum:F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    move/from16 v28, v0

    mul-float v28, v28, v11

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    move/from16 v29, v0

    mul-float v29, v29, v12

    add-float v28, v28, v29

    div-float v28, v28, v13

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    move/from16 v29, v0

    mul-float v29, v29, v11

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    move/from16 v30, v0

    mul-float v30, v30, v12

    add-float v29, v29, v30

    div-float v29, v29, v13

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    move/from16 v30, v0

    mul-float v30, v30, v11

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    move/from16 v31, v0

    mul-float v31, v31, v12

    add-float v30, v30, v31

    div-float v30, v30, v13

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    move/from16 v31, v0

    mul-float v31, v31, v11

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    move/from16 v32, v0

    mul-float v32, v32, v12

    add-float v31, v31, v32

    div-float v31, v31, v13

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    .line 330
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_100
.end method

.method public static smoothInkRectangleFilter(Lcom/google/research/handwriting/base/StrokeList;I)Lcom/google/research/handwriting/base/StrokeList;
    .registers 4
    .parameter "inputInk"
    .parameter "smoothing"

    .prologue
    .line 362
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [F

    .line 363
    .local v0, filter:[F
    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 364
    invoke-static {p0, v0}, Lcom/google/research/handwriting/base/InkUtils;->smoothInkWithFilter(Lcom/google/research/handwriting/base/StrokeList;[F)Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v1

    return-object v1
.end method

.method private static smoothInkWithFilter(Lcom/google/research/handwriting/base/StrokeList;[F)Lcom/google/research/handwriting/base/StrokeList;
    .registers 24
    .parameter "ink"
    .parameter "filter"

    .prologue
    .line 368
    new-instance v11, Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v11, v0}, Lcom/google/research/handwriting/base/StrokeList;-><init>(I)V

    .line 369
    .local v11, outputInk:Lcom/google/research/handwriting/base/StrokeList;
    invoke-virtual/range {p0 .. p0}, Lcom/google/research/handwriting/base/StrokeList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/research/handwriting/base/Stroke;

    .line 370
    .local v16, stroke:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual/range {v16 .. v16}, Lcom/google/research/handwriting/base/Stroke;->size()I

    move-result v17

    .line 371
    .local v17, strokeSize:I
    new-instance v10, Lcom/google/research/handwriting/base/Stroke;

    invoke-virtual/range {v16 .. v16}, Lcom/google/research/handwriting/base/Stroke;->isPenDown()Z

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/google/research/handwriting/base/Stroke;-><init>(IZ)V

    .line 372
    .local v10, newStroke:Lcom/google/research/handwriting/base/Stroke;
    invoke-virtual {v11, v10}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v9, 0x0

    .line 374
    .local v9, idx:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    div-int/lit8 v5, v20, 0x2

    .line 375
    .local v5, filterLenFloor:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    div-int/lit8 v4, v20, 0x2

    .line 379
    .local v4, filterLenCeil:I
    move/from16 v0, v17

    new-array v13, v0, [F

    .line 380
    .local v13, px:[F
    move/from16 v0, v17

    new-array v14, v0, [F

    .line 381
    .local v14, py:[F
    invoke-virtual/range {v16 .. v16}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_67

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 382
    .local v12, p:Lcom/google/research/handwriting/base/Stroke$Point;
    iget v0, v12, Lcom/google/research/handwriting/base/Stroke$Point;->x:F

    move/from16 v20, v0

    aput v20, v13, v9

    .line 383
    iget v0, v12, Lcom/google/research/handwriting/base/Stroke$Point;->y:F

    move/from16 v20, v0

    aput v20, v14, v9

    .line 384
    add-int/lit8 v9, v9, 0x1

    goto :goto_4c

    .line 387
    .end local v12           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    :cond_67
    const/4 v9, 0x0

    .line 388
    invoke-virtual/range {v16 .. v16}, Lcom/google/research/handwriting/base/Stroke;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/research/handwriting/base/Stroke$Point;

    .line 389
    .restart local v12       #p:Lcom/google/research/handwriting/base/Stroke$Point;
    const/4 v6, 0x0

    .line 390
    .local v6, filterSum:F
    const/16 v18, 0x0

    .line 391
    .local v18, x:F
    const/16 v19, 0x0

    .line 392
    .local v19, y:F
    neg-int v15, v5

    .local v15, q:I
    :goto_7e
    if-ge v15, v4, :cond_ad

    .line 393
    add-int v20, v9, v15

    if-ltz v20, :cond_aa

    add-int v20, v9, v15

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_aa

    .line 394
    add-int v20, v15, v5

    aget v20, p1, v20

    add-int v21, v9, v15

    aget v21, v13, v21

    mul-float v20, v20, v21

    add-float v18, v18, v20

    .line 395
    add-int v20, v15, v5

    aget v20, p1, v20

    add-int v21, v9, v15

    aget v21, v14, v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    .line 396
    add-int v20, v15, v5

    aget v20, p1, v20

    add-float v6, v6, v20

    .line 392
    :cond_aa
    add-int/lit8 v15, v15, 0x1

    goto :goto_7e

    .line 399
    :cond_ad
    div-float v18, v18, v6

    .line 400
    div-float v19, v19, v6

    .line 401
    iget v0, v12, Lcom/google/research/handwriting/base/Stroke$Point;->t:F

    move/from16 v20, v0

    iget v0, v12, Lcom/google/research/handwriting/base/Stroke$Point;->p:F

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    .line 402
    add-int/lit8 v9, v9, 0x1

    .line 403
    goto :goto_6c

    .line 405
    .end local v4           #filterLenCeil:I
    .end local v5           #filterLenFloor:I
    .end local v6           #filterSum:F
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #idx:I
    .end local v10           #newStroke:Lcom/google/research/handwriting/base/Stroke;
    .end local v12           #p:Lcom/google/research/handwriting/base/Stroke$Point;
    .end local v13           #px:[F
    .end local v14           #py:[F
    .end local v15           #q:I
    .end local v16           #stroke:Lcom/google/research/handwriting/base/Stroke;
    .end local v17           #strokeSize:I
    .end local v18           #x:F
    .end local v19           #y:F
    :cond_c7
    return-object v11
.end method
