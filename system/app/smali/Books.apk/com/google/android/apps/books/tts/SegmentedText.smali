.class public Lcom/google/android/apps/books/tts/SegmentedText;
.super Ljava/lang/Object;
.source "SegmentedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/tts/SegmentedText$1;
    }
.end annotation


# instance fields
.field private final mPositionOffsets:Lcom/google/android/apps/books/model/PositionMap;

.field private final mText:Ljava/lang/String;

.field private final mUnitToSegmentation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/books/tts/TtsUnit;",
            "Lcom/google/android/apps/books/tts/Segmentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 4
    .parameter "text"
    .parameter "positionOffsets"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mUnitToSegmentation:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mText:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mPositionOffsets:Lcom/google/android/apps/books/model/PositionMap;

    .line 35
    return-void
.end method

.method private getSegmentation(Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/Segmentation;
    .registers 6
    .parameter "unit"

    .prologue
    .line 54
    iget-object v2, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mUnitToSegmentation:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/tts/Segmentation;

    .line 55
    .local v0, result:Lcom/google/android/apps/books/tts/Segmentation;
    if-eqz v0, :cond_c

    move-object v1, v0

    .line 70
    .end local v0           #result:Lcom/google/android/apps/books/tts/Segmentation;
    .local v1, result:Lcom/google/android/apps/books/tts/Segmentation;
    :goto_b
    return-object v1

    .line 58
    .end local v1           #result:Lcom/google/android/apps/books/tts/Segmentation;
    .restart local v0       #result:Lcom/google/android/apps/books/tts/Segmentation;
    :cond_c
    sget-object v2, Lcom/google/android/apps/books/tts/SegmentedText$1;->$SwitchMap$com$google$android$apps$books$tts$TtsUnit:[I

    invoke-virtual {p1}, Lcom/google/android/apps/books/tts/TtsUnit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3c

    .line 69
    :goto_17
    iget-object v2, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mUnitToSegmentation:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 70
    .end local v0           #result:Lcom/google/android/apps/books/tts/Segmentation;
    .restart local v1       #result:Lcom/google/android/apps/books/tts/Segmentation;
    goto :goto_b

    .line 60
    .end local v1           #result:Lcom/google/android/apps/books/tts/Segmentation;
    .restart local v0       #result:Lcom/google/android/apps/books/tts/Segmentation;
    :pswitch_1e
    new-instance v0, Lcom/google/android/apps/books/tts/CharacterSegmentation;

    .end local v0           #result:Lcom/google/android/apps/books/tts/Segmentation;
    iget-object v2, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mPositionOffsets:Lcom/google/android/apps/books/model/PositionMap;

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/books/tts/CharacterSegmentation;-><init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 61
    .restart local v0       #result:Lcom/google/android/apps/books/tts/Segmentation;
    goto :goto_17

    .line 63
    :pswitch_28
    new-instance v0, Lcom/google/android/apps/books/tts/WordSegmentation;

    .end local v0           #result:Lcom/google/android/apps/books/tts/Segmentation;
    iget-object v2, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mPositionOffsets:Lcom/google/android/apps/books/model/PositionMap;

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/books/tts/WordSegmentation;-><init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 64
    .restart local v0       #result:Lcom/google/android/apps/books/tts/Segmentation;
    goto :goto_17

    .line 66
    :pswitch_32
    new-instance v0, Lcom/google/android/apps/books/tts/SentenceSegmentation;

    .end local v0           #result:Lcom/google/android/apps/books/tts/Segmentation;
    iget-object v2, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mPositionOffsets:Lcom/google/android/apps/books/model/PositionMap;

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/books/tts/SentenceSegmentation;-><init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .restart local v0       #result:Lcom/google/android/apps/books/tts/Segmentation;
    goto :goto_17

    .line 58
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_28
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method public getCharacterOffsetAtPosition(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mPositionOffsets:Lcom/google/android/apps/books/model/PositionMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/PositionMap;->getCharacterOffsetAt(I)I

    move-result v0

    return v0
.end method

.method public getItemCount(Lcom/google/android/apps/books/tts/TtsUnit;)I
    .registers 3
    .parameter "unit"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/SegmentedText;->getSegmentation(Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/Segmentation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/tts/Segmentation;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemRange(Lcom/google/android/apps/books/tts/TtsUnit;I)Lcom/google/android/apps/books/util/Range;
    .registers 4
    .parameter "unit"
    .parameter "index"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/SegmentedText;->getSegmentation(Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/Segmentation;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/books/tts/Segmentation;->getItemRange(I)Lcom/google/android/apps/books/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getItemText(Lcom/google/android/apps/books/tts/TtsUnit;I)Ljava/lang/String;
    .registers 4
    .parameter "unit"
    .parameter "index"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/SegmentedText;->getSegmentation(Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/Segmentation;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/books/tts/Segmentation;->getItemText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNearestItemIndex(Lcom/google/android/apps/books/tts/TtsUnit;I)I
    .registers 4
    .parameter "unit"
    .parameter "characterIndex"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/SegmentedText;->getSegmentation(Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/Segmentation;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/books/tts/Segmentation;->getNearestItemIndex(I)I

    move-result v0

    return v0
.end method

.method public getNearestItemIndex(Lcom/google/android/apps/books/tts/TtsUnit;Lcom/google/android/apps/books/common/Position;)Landroid/util/Pair;
    .registers 4
    .parameter "unit"
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/tts/TtsUnit;",
            "Lcom/google/android/apps/books/common/Position;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/tts/SegmentedText;->getSegmentation(Lcom/google/android/apps/books/tts/TtsUnit;)Lcom/google/android/apps/books/tts/Segmentation;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/apps/books/tts/Segmentation;->getNearestItemIndex(Lcom/google/android/apps/books/common/Position;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfPositions()I
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mPositionOffsets:Lcom/google/android/apps/books/model/PositionMap;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/PositionMap;->getNumberOfPositions()I

    move-result v0

    return v0
.end method

.method public getReadingPositionAtCharacter(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/tts/SegmentedText;->mPositionOffsets:Lcom/google/android/apps/books/model/PositionMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/PositionMap;->getReadingPositionAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
