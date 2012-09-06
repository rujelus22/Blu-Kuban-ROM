.class Lcom/google/android/apps/unveil/textinput/TextMasker$Line;
.super Ljava/lang/Object;
.source "TextMasker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/TextMasker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Line"
.end annotation


# instance fields
.field private costSum:F

.field private final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->words:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->costSum:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/textinput/TextMasker$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;-><init>()V

    return-void
.end method


# virtual methods
.method public addWord(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;IILjava/util/List;)V
    .registers 13
    .parameter "word"
    .parameter "centerX"
    .parameter "centerY"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            "II",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p4, smudgePoints:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->words:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    const v0, 0x7f7fffff

    .line 57
    .local v0, cheapestCost:F
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 58
    .local v2, point:Landroid/graphics/Point;
    int-to-float v4, p2

    int-to-float v5, p3

    iget v6, v2, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/apps/unveil/env/GeometryUtils;->squareDistance(FFFF)F

    move-result v3

    .line 60
    .local v3, squareDistance:F
    cmpg-float v4, v3, v0

    if-gez v4, :cond_c

    .line 61
    move v0, v3

    goto :goto_c

    .line 64
    .end local v2           #point:Landroid/graphics/Point;
    .end local v3           #squareDistance:F
    :cond_2a
    iget v4, p0, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->costSum:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->costSum:F

    .line 65
    return-void
.end method

.method public getCost()F
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->costSum:F

    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getWords()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->words:Ljava/util/List;

    return-object v0
.end method
