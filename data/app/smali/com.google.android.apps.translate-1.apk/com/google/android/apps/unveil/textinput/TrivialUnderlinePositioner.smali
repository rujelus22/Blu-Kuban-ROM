.class public Lcom/google/android/apps/unveil/textinput/TrivialUnderlinePositioner;
.super Ljava/lang/Object;
.source "TrivialUnderlinePositioner.java"

# interfaces
.implements Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;


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


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TrivialUnderlinePositioner;->underlines:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
    .registers 3
    .parameter "word"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TrivialUnderlinePositioner;->underlines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TrivialUnderlinePositioner;->underlines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    .line 45
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setWords(Ljava/util/List;)V
    .registers 12
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
    .line 25
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;>;"
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TrivialUnderlinePositioner;->underlines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 27
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_e

    .line 38
    :cond_d
    return-void

    .line 31
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 32
    .local v2, word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    .line 33
    .local v0, box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TrivialUnderlinePositioner;->underlines:Ljava/util/Map;

    new-instance v4, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v7

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v7

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v4, v5, v6, v0}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method
