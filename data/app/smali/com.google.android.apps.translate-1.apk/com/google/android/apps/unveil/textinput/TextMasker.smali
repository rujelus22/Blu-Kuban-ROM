.class public Lcom/google/android/apps/unveil/textinput/TextMasker;
.super Ljava/lang/Object;
.source "TextMasker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/TextMasker$1;,
        Lcom/google/android/apps/unveil/textinput/TextMasker$Line;
    }
.end annotation


# static fields
.field private static final MAX_DISTANCE_FOR_SINGLE_WORD_SELECTION_DIP:I = 0x5

.field private static final MAX_WORD_DISTANCE_DIP:I = 0x28

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$UrlGroup;",
            ">;"
        }
    .end annotation
.end field

.field allowSmartSelection:Z

.field private final maxDistanceForSingleWordSelectionPx:I

.field private final maxWordDistancePx:I

.field private queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

.field private final selectedWordUnderlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation
.end field

.field smartSelectedLines:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/apps/unveil/textinput/TextMasker$Line;",
            ">;"
        }
    .end annotation
.end field

.field smartSelectedWords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation
.end field

.field private smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

.field private final underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

.field private final unselectedWordUnderlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;",
            ">;"
        }
    .end annotation
.end field

.field private final unselectedWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation
.end field

.field private words:Ljava/util/List;
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->NONE:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWords:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWords:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWordUnderlines:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWordUnderlines:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedWords:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedLines:Ljava/util/Set;

    .line 108
    const/high16 v0, 0x4220

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->maxWordDistancePx:I

    .line 109
    const/high16 v0, 0x40a0

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->maxDistanceForSingleWordSelectionPx:I

    .line 111
    new-instance v0, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;

    invoke-direct {v0, p1}, Lcom/google/android/apps/unveil/textinput/SlantedUnderlinePositioner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    .line 112
    return-void
.end method

.method private computeSelectedWords()V
    .registers 26

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->isMultipass:Z

    move/from16 v21, v0

    if-nez v21, :cond_20

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedWords:Ljava/util/Set;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->clear()V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedLines:Ljava/util/Set;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->clear()V

    .line 151
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWords:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWords:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWordUnderlines:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWordUnderlines:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->setWords(Ljava/util/List;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->ALL:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a6

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_123

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWords:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_82
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_123

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 164
    .local v20, word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWordUnderlines:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 170
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v20           #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->NONE:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f9

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_123

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWords:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_d5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_123

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 175
    .restart local v20       #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWordUnderlines:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d5

    .line 181
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v20           #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    :cond_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    if-eqz v21, :cond_123

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_123

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

    move-object/from16 v21, v0

    if-eqz v21, :cond_123

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->points:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_124

    .line 259
    :cond_123
    :goto_123
    return-void

    .line 185
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->mask:Lcom/google/android/apps/unveil/env/Picture;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/unveil/env/Picture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v13

    .line 186
    .local v13, maskSize:Lcom/google/android/apps/unveil/env/Size;
    iget v0, v13, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v17, v21, v22

    .line 187
    .local v17, scaleX:F
    iget v0, v13, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 189
    .local v18, scaleY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->points:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    .line 190
    .local v7, firstPoint:Landroid/graphics/Point;
    const/16 v19, 0x0

    .line 191
    .local v19, totalSquaredDistance:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->points:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_192
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1d4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Point;

    .line 192
    .local v14, point:Landroid/graphics/Point;
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    mul-int v21, v21, v22

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    mul-int v22, v22, v23

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v19, v19, v21

    goto :goto_192

    .line 196
    .end local v14           #point:Landroid/graphics/Point;
    :cond_1d4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->allowSmartSelection:Z

    move/from16 v21, v0

    if-eqz v21, :cond_215

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->points:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v19, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->maxDistanceForSingleWordSelectionPx:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->maxDistanceForSingleWordSelectionPx:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_215

    .line 198
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/textinput/TextMasker;->performSingleWordSelection(FF)V

    goto/16 :goto_123

    .line 202
    :cond_215
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v12, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/textinput/TextMasker$Line;>;"
    const v15, 0x7fffffff

    .line 205
    .local v15, previousRightX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_227
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_31a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 206
    .restart local v20       #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-virtual/range {v20 .. v20}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v21

    invoke-virtual/range {v20 .. v20}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v17

    move/from16 v0, v21

    float-to-int v3, v0

    .line 207
    .local v3, centerX:I
    invoke-virtual/range {v20 .. v20}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v21

    invoke-virtual/range {v20 .. v20}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 208
    .local v16, rightX:I
    invoke-virtual/range {v20 .. v20}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v21

    invoke-virtual/range {v20 .. v20}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v4, v0

    .line 210
    .local v4, centerY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->isHighlighted(II)Z

    move-result v21

    if-eqz v21, :cond_2f4

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWords:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWordUnderlines:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    if-ge v3, v15, :cond_2cd

    .line 217
    new-instance v21, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;-><init>(Lcom/google/android/apps/unveil/textinput/TextMasker$1;)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_2cd
    move/from16 v15, v16

    .line 220
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->points:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->addWord(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;IILjava/util/List;)V

    goto/16 :goto_227

    .line 222
    :cond_2f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWords:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWordUnderlines:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_227

    .line 227
    .end local v3           #centerX:I
    .end local v4           #centerY:I
    .end local v16           #rightX:I
    .end local v20           #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    :cond_31a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->allowSmartSelection:Z

    move/from16 v21, v0

    if-eqz v21, :cond_123

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->oneLineSelection:Z

    move/from16 v21, v0

    if-eqz v21, :cond_123

    .line 230
    const v6, 0x7f7fffff

    .line 231
    .local v6, cheapestLineCost:F
    const/4 v5, 0x0

    .line 232
    .local v5, cheapestLine:Lcom/google/android/apps/unveil/textinput/TextMasker$Line;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_338
    :goto_338
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_34f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;

    .line 233
    .local v10, line:Lcom/google/android/apps/unveil/textinput/TextMasker$Line;
    invoke-virtual {v10}, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->getCost()F

    move-result v11

    .line 234
    .local v11, lineCost:F
    cmpg-float v21, v11, v6

    if-gez v21, :cond_338

    .line 235
    move-object v5, v10

    .line 236
    move v6, v11

    goto :goto_338

    .line 239
    .end local v10           #line:Lcom/google/android/apps/unveil/textinput/TextMasker$Line;
    .end local v11           #lineCost:F
    :cond_34f
    if-eqz v5, :cond_35c

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedLines:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_35c
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8           #i$:Ljava/util/Iterator;
    :cond_360
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_123

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;

    .line 246
    .restart local v10       #line:Lcom/google/android/apps/unveil/textinput/TextMasker$Line;
    if-eq v5, v10, :cond_360

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedLines:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_360

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedLines:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v10}, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->getWords()Ljava/lang/Iterable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_38f
    :goto_38f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_360

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 249
    .restart local v20       #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->isMultipass:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedWords:Ljava/util/Set;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_38f

    .line 250
    :cond_3b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWords:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWordUnderlines:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWords:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWordUnderlines:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38f
.end method

.method private nearestWord(II)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 15
    .parameter "x"
    .parameter "y"

    .prologue
    .line 345
    const/4 v7, 0x0

    .line 346
    .local v7, nearestWord:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    const v6, 0x7fffffff

    .line 347
    .local v6, nearestSquaredDistance:I
    iget-object v10, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 348
    .local v9, word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    invoke-virtual {v9}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    .line 352
    .local v0, box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v10

    if-gt p1, v10, :cond_44

    .line 353
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v1

    .line 360
    .local v1, boxX:I
    :goto_24
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v10

    if-gt p2, v10, :cond_52

    .line 361
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v2

    .line 366
    .local v2, boxY:I
    :goto_2e
    sub-int v3, v1, p1

    .line 367
    .local v3, dX:I
    sub-int v4, v2, p2

    .line 369
    .local v4, dY:I
    mul-int v10, v3, v3

    mul-int v11, v4, v4

    add-int v8, v10, v11

    .line 370
    .local v8, squaredDistance:I
    if-ge v8, v6, :cond_a

    iget v10, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->maxWordDistancePx:I

    iget v11, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->maxWordDistancePx:I

    mul-int/2addr v10, v11

    if-ge v8, v10, :cond_a

    .line 372
    move v6, v8

    .line 373
    move-object v7, v9

    goto :goto_a

    .line 355
    .end local v1           #boxX:I
    .end local v2           #boxY:I
    .end local v3           #dX:I
    .end local v4           #dY:I
    .end local v8           #squaredDistance:I
    :cond_44
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getX()I

    move-result v10

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {p1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1       #boxX:I
    goto :goto_24

    .line 363
    :cond_52
    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getY()I

    move-result v10

    invoke-virtual {v0}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {p2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2       #boxY:I
    goto :goto_2e

    .line 377
    .end local v0           #box:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .end local v1           #boxX:I
    .end local v2           #boxY:I
    .end local v9           #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    :cond_60
    return-object v7
.end method

.method private performSingleWordSelection(FF)V
    .registers 14
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    const/4 v9, 0x0

    .line 265
    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    iget-object v8, v8, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->points:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    div-float/2addr v8, p1

    float-to-int v10, v8

    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    iget-object v8, v8, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->points:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    div-float/2addr v8, p2

    float-to-int v8, v8

    invoke-direct {p0, v10, v8}, Lcom/google/android/apps/unveil/textinput/TextMasker;->nearestWord(II)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v4

    .line 267
    .local v4, selectedWord:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_95

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 268
    .local v7, word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    if-eq v4, v7, :cond_3f

    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedWords:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    :cond_3f
    const/4 v5, 0x1

    .line 269
    .local v5, shouldSelectWord:Z
    :goto_40
    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedLines:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_46
    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;

    .line 270
    .local v3, line:Lcom/google/android/apps/unveil/textinput/TextMasker$Line;
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/textinput/TextMasker$Line;->getWords()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 271
    .local v6, smartWord:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    if-ne v7, v6, :cond_5a

    .line 272
    const/4 v5, 0x1

    .line 273
    goto :goto_46

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Lcom/google/android/apps/unveil/textinput/TextMasker$Line;
    .end local v5           #shouldSelectWord:Z
    .end local v6           #smartWord:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    :cond_6a
    move v5, v9

    .line 268
    goto :goto_40

    .line 278
    .restart local v5       #shouldSelectWord:Z
    :cond_6c
    if-eqz v5, :cond_84

    .line 279
    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWords:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWordUnderlines:Ljava/util/List;

    iget-object v10, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    invoke-interface {v10, v7}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smartSelectedWords:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 283
    :cond_84
    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWords:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v8, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWordUnderlines:Ljava/util/List;

    iget-object v10, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->underlinePositioner:Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;

    invoke-interface {v10, v7}, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;->getUnderline(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 287
    .end local v5           #shouldSelectWord:Z
    .end local v7           #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    :cond_95
    return-void
.end method


# virtual methods
.method public clearWords()V
    .registers 2

    .prologue
    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->actions:Ljava/util/List;

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextMasker;->computeSelectedWords()V

    .line 136
    return-void
.end method

.method public getSelectedActions()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$Url;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 290
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v5, selectedActions:Ljava/util/List;,"Ljava/util/List<Lcom/google/goggles/UrlGroupProtos$Url;>;"
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->actions:Ljava/util/List;

    if-nez v9, :cond_c

    .line 336
    :cond_b
    return-object v5

    .line 296
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextMasker;->getSelectedWordsAsString()Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, selectedString:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, addIfAnyOthersMatch:Ljava/util/List;,"Ljava/util/List<Lcom/google/goggles/UrlGroupProtos$Url;>;"
    iget-object v9, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->actions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    .line 302
    .local v8, urlGroup:Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-virtual {v8}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->getUrlList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/goggles/UrlGroupProtos$Url;

    .line 303
    .local v7, url:Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-virtual {v7}, Lcom/google/goggles/UrlGroupProtos$Url;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, description:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2f

    const-string v9, "Translate"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    const-string v9, "Copy"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 310
    const-string v9, "Add To Contacts"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 311
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 316
    :cond_61
    const-string v0, "WORK: "

    .line 317
    .local v0, WORK_PHONE_PREFIX:Ljava/lang/String;
    const-string v9, "WORK: "

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 318
    const-string v9, "WORK: "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    :cond_75
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8b

    .line 322
    sget-object v9, Lcom/google/android/apps/unveil/textinput/TextMasker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v10, "Matched on \'%s\'"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v2, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 325
    :cond_8b
    sget-object v9, Lcom/google/android/apps/unveil/textinput/TextMasker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v10, "No match for \'%s\'"

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v2, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2f

    .line 330
    .end local v0           #WORK_PHONE_PREFIX:Ljava/lang/String;
    .end local v2           #description:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #url:Lcom/google/goggles/UrlGroupProtos$Url;
    .end local v8           #urlGroup:Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    :cond_97
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    .line 331
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/goggles/UrlGroupProtos$Url;

    .line 332
    .restart local v7       #url:Lcom/google/goggles/UrlGroupProtos$Url;
    invoke-interface {v5, v12, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_a1
.end method

.method public getSelectedWords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWordUnderlines:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedWordsAsString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v1, joined:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->selectedWords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    .line 383
    .local v2, word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 387
    .end local v2           #word:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_41

    .line 388
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 391
    :cond_41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getUnselectedWords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->unselectedWordUnderlines:Ljava/util/List;

    return-object v0
.end method

.method public setQueryPictureSize(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 2
    .parameter "size"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->queryPictureSize:Lcom/google/android/apps/unveil/env/Size;

    .line 116
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextMasker;->computeSelectedWords()V

    .line 117
    return-void
.end method

.method public setSmudge(Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;)V
    .registers 4
    .parameter "smudge"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->smudge:Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;

    .line 121
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->allowSmartSelection:Z

    iget-boolean v0, p1, Lcom/google/android/apps/unveil/textinput/SmudgeView$Smudge;->isMultipass:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->allowSmartSelection:Z

    .line 122
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextMasker;->computeSelectedWords()V

    .line 123
    return-void

    .line 121
    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setWords(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$UrlGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;>;"
    .local p2, actions:Ljava/util/List;,"Ljava/util/List<Lcom/google/goggles/UrlGroupProtos$UrlGroup;>;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->words:Ljava/util/List;

    .line 127
    iput-object p2, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->actions:Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/textinput/TextMasker;->allowSmartSelection:Z

    .line 129
    invoke-direct {p0}, Lcom/google/android/apps/unveil/textinput/TextMasker;->computeSelectedWords()V

    .line 130
    return-void
.end method
