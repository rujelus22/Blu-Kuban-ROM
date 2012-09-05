.class public Lcom/google/android/youtube/core/utils/Ranges;
.super Ljava/lang/Object;
.source "Ranges.java"


# instance fields
.field final intervals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private find(J)I
    .registers 7
    .parameter "offset"

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 30
    iget-object v2, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 31
    .local v1, interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1e

    .line 35
    .end local v0           #i:I
    .end local v1           #interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :goto_1d
    return v0

    .line 29
    .restart local v0       #i:I
    .restart local v1       #interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    .end local v1           #interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_21
    iget-object v2, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1d
.end method


# virtual methods
.method public add(JJ)J
    .registers 14
    .parameter "start"
    .parameter "end"

    .prologue
    const-wide/16 v7, 0x1

    .line 43
    sub-long v5, p1, v7

    invoke-direct {p0, v5, v6}, Lcom/google/android/youtube/core/utils/Ranges;->find(J)I

    move-result v3

    .line 44
    .local v3, startIndex:I
    iget-object v5, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_63

    .line 45
    iget-object v5, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 46
    .local v4, startInterval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, p1, v5

    if-lez v5, :cond_2c

    .line 47
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 50
    :cond_2c
    invoke-direct {p0, p3, p4}, Lcom/google/android/youtube/core/utils/Ranges;->find(J)I

    move-result v0

    .line 51
    .local v0, endIndex:I
    iget-object v5, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_57

    .line 52
    iget-object v5, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 53
    .local v1, endInterval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v7

    cmp-long v5, p3, v5

    if-ltz v5, :cond_57

    .line 54
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 60
    .end local v1           #endInterval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_57
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_59
    if-lt v2, v3, :cond_63

    .line 61
    iget-object v5, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    add-int/lit8 v2, v2, -0x1

    goto :goto_59

    .line 65
    .end local v0           #endIndex:I
    .end local v2           #i:I
    .end local v4           #startInterval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_63
    iget-object v5, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    new-instance v6, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 66
    return-wide p3
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    return-void
.end method

.method public nextGap(J)J
    .registers 9
    .parameter "offset"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/utils/Ranges;->find(J)I

    move-result v0

    .line 75
    .local v0, index:I
    iget-object v2, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 76
    iget-object v2, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 77
    .local v1, interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_21

    .line 79
    .end local v1           #interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local p1
    :cond_20
    :goto_20
    return-wide p1

    .line 77
    .restart local v1       #interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local p1
    :cond_21
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long p1, v2, v4

    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    .line 90
    iget-object v3, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 91
    .local v2, interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v3, p0, Lcom/google/android/youtube/core/utils/Ranges;->intervals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_36

    .line 93
    const-string v3, " ... "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 96
    .end local v2           #interval:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
