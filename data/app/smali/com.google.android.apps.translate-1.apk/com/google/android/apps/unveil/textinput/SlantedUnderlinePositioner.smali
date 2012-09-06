.class public Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;
.super Ljava/lang/Object;
.source "SlantedUnderlinePositioner.java"

# interfaces
.implements Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;


# static fields
.field private static final VERTICAL_SHIFT_DIP:I = 0x3


# instance fields
.field private final underlines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            "Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;",
            ">;"
        }
    .end annotation
.end field

.field private final verticalShiftDip:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->underlines:Ljava/util/Map;

    .line 40
    const/high16 v0, 0x4040

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->verticalShiftDip:I

    .line 41
    return-void
.end method

.method private boxCenter(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Landroid/graphics/Point;
    .registers 6
    .parameter "box"

    .prologue
    .line 101
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private inSameLine(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Z
    .registers 8
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_1d

    .line 130
    :cond_1c
    :goto_1c
    return v1

    .line 126
    :cond_1d
    invoke-virtual {p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 127
    .local v0, deltaY:I
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-gt v0, v2, :cond_1c

    .line 130
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method private processLine(Ljava/util/ArrayList;)V
    .registers 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, line:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;>;"
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    invoke-virtual {v9}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v5

    .line 78
    .local v5, left:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    invoke-virtual {v9}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v6

    .line 80
    .local v6, right:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->boxCenter(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Landroid/graphics/Point;

    move-result-object v2

    .line 81
    .local v2, centerLeft:Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->boxCenter(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Landroid/graphics/Point;

    move-result-object v3

    .line 83
    .local v3, centerRight:Landroid/graphics/Point;
    const/4 v7, 0x0

    .line 84
    .local v7, slope:F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_39

    .line 85
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->slope(Landroid/graphics/Point;Landroid/graphics/Point;)F

    move-result v7

    .line 88
    :cond_39
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 89
    .local v8, word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-virtual {v8}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v1

    .line 90
    .local v1, box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->underlines:Ljava/util/Map;

    new-instance v10, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    new-instance v11, Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v12

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v13

    invoke-virtual {v5}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v13, v7

    invoke-virtual {v5}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    invoke-virtual {v5}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->verticalShiftDip:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    new-instance v12, Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v13

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v14

    invoke-virtual {v1}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v5}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v7

    invoke-virtual {v5}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-virtual {v5}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->verticalShiftDip:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    float-to-int v14, v14

    invoke-direct {v12, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v10, v11, v12, v1}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)V

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 98
    .end local v1           #box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .end local v8           #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    :cond_b2
    return-void
.end method

.method private slope(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 108
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_9

    .line 109
    const/high16 v0, 0x4f00

    .line 112
    :goto_8
    return v0

    :cond_9
    iget v0, p2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_8
.end method


# virtual methods
.method public getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
    .registers 3
    .parameter "word"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->underlines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->underlines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    .line 72
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setWords(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;>;"
    iget-object v2, p0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->underlines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 47
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 65
    :cond_d
    :goto_d
    return-void

    .line 51
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, line:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->inSameLine(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 57
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->processLine(Ljava/util/ArrayList;)V

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 60
    :cond_40
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 62
    :cond_4a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 63
    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;->processLine(Ljava/util/ArrayList;)V

    goto :goto_d
.end method
