.class public abstract Lcom/google/android/apps/books/tts/BaseTtsSegmentation;
.super Ljava/lang/Object;
.source "BaseTtsSegmentation.java"

# interfaces
.implements Lcom/google/android/apps/books/tts/Segmentation;


# static fields
.field private static final nonWhitespacePattern:Ljava/util/regex/Pattern;


# instance fields
.field final mPositionMap:Lcom/google/android/apps/books/model/PositionMap;

.field final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "\\S"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;->nonWhitespacePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 3
    .parameter "text"
    .parameter "positionMap"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;->mText:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;->mPositionMap:Lcom/google/android/apps/books/model/PositionMap;

    .line 26
    return-void
.end method


# virtual methods
.method public getNearestItemIndex(I)I
    .registers 5
    .parameter "characterIndex"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;->getItemCount()I

    move-result v0

    .line 46
    .local v0, itemCount:I
    const/4 v1, 0x0

    .local v1, itemIndex:I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 47
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;->getItemRange(I)Lcom/google/android/apps/books/util/Range;

    move-result-object v2

    iget v2, v2, Lcom/google/android/apps/books/util/Range;->start:I

    if-le v2, p1, :cond_15

    .line 48
    if-lez v1, :cond_13

    .line 49
    add-int/lit8 v1, v1, -0x1

    :cond_13
    move v2, v1

    .line 54
    :goto_14
    return v2

    .line 46
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 54
    :cond_18
    add-int/lit8 v2, v0, -0x1

    goto :goto_14
.end method

.method public getNearestItemIndex(Lcom/google/android/apps/books/common/Position;)Landroid/util/Pair;
    .registers 5
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    const/4 v2, -0x1

    .line 33
    iget-object v1, p0, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;->mPositionMap:Lcom/google/android/apps/books/model/PositionMap;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/books/model/PositionMap;->getCharacterOffsetAt(Lcom/google/android/apps/books/common/Position;)I

    move-result v0

    .line 35
    .local v0, positionOffset:I
    if-ne v0, v2, :cond_17

    .line 36
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 39
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;->getNearestItemIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    goto :goto_16
.end method

.method protected final shouldIncludeItem(Ljava/lang/String;)Z
    .registers 4
    .parameter "text"

    .prologue
    .line 63
    sget-object v1, Lcom/google/android/apps/books/tts/BaseTtsSegmentation;->nonWhitespacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method
