.class public Lcom/google/android/youtube/core/search/scoring/ScoredResult;
.super Ljava/lang/Object;
.source "ScoredResult.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/youtube/core/search/scoring/ScoredResult",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private matchHtml:Ljava/lang/String;

.field private final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final scores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    .local p1, result:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->result:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->scores:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public addScore(Ljava/lang/Comparable;)V
    .registers 3
    .parameter "score"

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->scores:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public compareTo(Lcom/google/android/youtube/core/search/scoring/ScoredResult;)I
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/search/scoring/ScoredResult",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    .local p1, other:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->scores:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 54
    iget-object v4, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->scores:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    .line 55
    .local v3, thisScore:Ljava/lang/Comparable;
    iget-object v4, p1, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->scores:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 56
    .local v2, thatScore:Ljava/lang/Comparable;
    if-nez v3, :cond_1d

    .line 57
    const/4 v4, 0x1

    .line 70
    .end local v2           #thatScore:Ljava/lang/Comparable;
    .end local v3           #thisScore:Ljava/lang/Comparable;
    :goto_1c
    return v4

    .line 59
    .restart local v2       #thatScore:Ljava/lang/Comparable;
    .restart local v3       #thisScore:Ljava/lang/Comparable;
    :cond_1d
    if-nez v2, :cond_21

    .line 60
    const/4 v4, -0x1

    goto :goto_1c

    .line 62
    :cond_21
    invoke-interface {v3, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 63
    .local v0, comparison:I
    if-eqz v0, :cond_29

    .line 65
    neg-int v4, v0

    goto :goto_1c

    .line 53
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v0           #comparison:I
    .end local v2           #thatScore:Ljava/lang/Comparable;
    .end local v3           #thisScore:Ljava/lang/Comparable;
    :cond_2c
    const/4 v4, 0x0

    goto :goto_1c
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 13
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    check-cast p1, Lcom/google/android/youtube/core/search/scoring/ScoredResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->compareTo(Lcom/google/android/youtube/core/search/scoring/ScoredResult;)I

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getMatchHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->matchHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    iget-wide v0, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->timestamp:J

    return-wide v0
.end method

.method public setMatchHtml(Ljava/lang/String;)V
    .registers 3
    .parameter "matchHtml"

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->matchHtml:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 43
    iput-object p1, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->matchHtml:Ljava/lang/String;

    .line 45
    :cond_6
    return-void
.end method

.method public setTimestamp(J)V
    .registers 5
    .parameter "timestamp"

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<TT;>;"
    iget-wide v0, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->timestamp:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->timestamp:J

    .line 49
    return-void
.end method
