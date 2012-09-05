.class public Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;
.super Ljava/lang/Object;
.source "QueryVideoScorer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private bestMatchPosition:I

.field private bestMatchScore:I

.field private bestMatchString:Ljava/lang/String;

.field private final haveQuery:Z

.field private final query:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 4
    .parameter "resources"
    .parameter "query"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->resources:Landroid/content/res/Resources;

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->query:Ljava/lang/String;

    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->haveQuery:Z

    .line 52
    return-void

    .line 51
    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private clearBestMatchInfo()V
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchString:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchScore:I

    .line 137
    return-void
.end method

.method private getBestMatchHtml()Ljava/lang/String;
    .registers 7

    .prologue
    .line 82
    iget-object v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchString:Ljava/lang/String;

    if-eqz v3, :cond_70

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 84
    .local v1, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 85
    .local v2, startPos:I
    iget v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchPosition:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_21

    .line 86
    iget v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchPosition:I

    add-int/lit8 v2, v3, -0xa

    .line 87
    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_21
    iget v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchPosition:I

    iget-object v4, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->query:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v3, v4

    .line 90
    .local v0, bestMatchEnd:I
    iget-object v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchString:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchPosition:I

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchString:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchPosition:I

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchString:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .end local v0           #bestMatchEnd:I
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #startPos:I
    :goto_6f
    return-object v3

    :cond_70
    const/4 v3, 0x0

    goto :goto_6f
.end method

.method private getCreditsMatchScore(Lcom/google/android/youtube/core/model/Video;)I
    .registers 9
    .parameter "video"

    .prologue
    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, score:I
    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    if-eqz v5, :cond_3b

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video$Pro;->credits:Ljava/util/Map;

    if-eqz v5, :cond_3b

    .line 110
    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Video$Pro;->credits:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 111
    .local v1, credits:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, credit:Ljava/lang/String;
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-direct {p0, v0, v5, v6}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->textMatchScore(Ljava/lang/String;IZ)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_27

    .line 116
    .end local v0           #credit:Ljava/lang/String;
    .end local v1           #credits:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3b
    return v4
.end method

.method private getDescriptionMatchScore(Lcom/google/android/youtube/core/model/Video;)I
    .registers 6
    .parameter "video"

    .prologue
    .line 120
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->textMatchScore(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method private getGenresMatchScore(Lcom/google/android/youtube/core/model/Video;)I
    .registers 8
    .parameter "video"

    .prologue
    const/4 v5, 0x1

    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, score:I
    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    if-eqz v3, :cond_30

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video$Pro;->genres:Ljava/util/List;

    if-eqz v3, :cond_30

    .line 127
    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video$Pro;->genres:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Genre;

    .line 128
    .local v0, genre:Lcom/google/android/youtube/core/model/Video$Genre;
    iget-object v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->resources:Landroid/content/res/Resources;

    invoke-interface {v0}, Lcom/google/android/youtube/core/model/Video$Genre;->stringId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5, v5}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->textMatchScore(Ljava/lang/String;IZ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_14

    .line 131
    .end local v0           #genre:Lcom/google/android/youtube/core/model/Video$Genre;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_30
    return v2
.end method

.method private getTitleMatchScore(Lcom/google/android/youtube/core/model/Video;)I
    .registers 5
    .parameter "video"

    .prologue
    .line 104
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->textMatchScore(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private textMatchScore(Ljava/lang/String;IIZ)I
    .registers 9
    .parameter "text"
    .parameter "threshold"
    .parameter "baseScore"
    .parameter "bestMatchCandidate"

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->query:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_10

    .line 146
    :cond_e
    const/4 v1, 0x0

    .line 162
    :cond_f
    :goto_f
    return v1

    .line 148
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, matchPos:I
    const/4 v1, 0x0

    .line 150
    .local v1, score:I
    if-nez v0, :cond_2c

    .line 152
    mul-int/lit8 v1, p3, 0x2

    .line 157
    :cond_1f
    :goto_1f
    if-eqz p4, :cond_f

    iget v2, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchScore:I

    if-le v1, v2, :cond_f

    .line 158
    iput-object p1, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchString:Ljava/lang/String;

    .line 159
    iput v0, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchPosition:I

    .line 160
    iput v1, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->bestMatchScore:I

    goto :goto_f

    .line 153
    :cond_2c
    if-lez v0, :cond_1f

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 155
    move v1, p3

    goto :goto_1f
.end method

.method private textMatchScore(Ljava/lang/String;IZ)I
    .registers 5
    .parameter "text"
    .parameter "baseScore"
    .parameter "bestMatchCandidate"

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->textMatchScore(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method


# virtual methods
.method public score(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/search/scoring/ScoredResult;)Z
    .registers 8
    .parameter "video"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Video;",
            "Lcom/google/android/youtube/core/search/scoring/ScoredResult",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p2, result:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<*>;"
    const/4 v2, 0x0

    .line 55
    iget-boolean v3, p0, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->haveQuery:Z

    if-eqz v3, :cond_31

    .line 56
    invoke-direct {p0}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->clearBestMatchInfo()V

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->getTitleMatchScore(Lcom/google/android/youtube/core/model/Video;)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->getCreditsMatchScore(Lcom/google/android/youtube/core/model/Video;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->getDescriptionMatchScore(Lcom/google/android/youtube/core/model/Video;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->getGenresMatchScore(Lcom/google/android/youtube/core/model/Video;)I

    move-result v4

    add-int v1, v3, v4

    .line 64
    .local v1, queryScore:I
    if-nez v1, :cond_1f

    .line 78
    .end local v1           #queryScore:I
    :goto_1e
    return v2

    .line 69
    .restart local v1       #queryScore:I
    :cond_1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->addScore(Ljava/lang/Comparable;)V

    .line 70
    invoke-direct {p0}, Lcom/google/android/youtube/core/search/scoring/QueryVideoScorer;->getBestMatchHtml()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, bestMatchHtml:Ljava/lang/String;
    if-eqz v0, :cond_2f

    .line 72
    invoke-virtual {p2, v0}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->setMatchHtml(Ljava/lang/String;)V

    .line 78
    .end local v0           #bestMatchHtml:Ljava/lang/String;
    .end local v1           #queryScore:I
    :cond_2f
    :goto_2f
    const/4 v2, 0x1

    goto :goto_1e

    .line 76
    :cond_31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->addScore(Ljava/lang/Comparable;)V

    goto :goto_2f
.end method
