.class public final Lcom/google/android/youtube/core/utils/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    .line 22
    return-void
.end method

.method private b(J)I
    .registers 7
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 31
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1f

    .line 35
    :goto_1e
    return v1

    .line 29
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 35
    :cond_23
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_1e
.end method


# virtual methods
.method public final a(J)J
    .registers 7
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/utils/u;->b(J)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 77
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-gez v1, :cond_21

    .line 79
    :cond_20
    :goto_20
    return-wide p1

    .line 77
    :cond_21
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long p1, v0, v2

    goto :goto_20
.end method

.method public final a(JJ)J
    .registers 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x1

    .line 43
    sub-long v0, p1, v6

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/core/utils/u;->b(J)I

    move-result v3

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_63

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 46
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-lez v1, :cond_2c

    .line 47
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 50
    :cond_2c
    invoke-direct {p0, p3, p4}, Lcom/google/android/youtube/core/utils/u;->b(J)I

    move-result v2

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_76

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 53
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v6

    cmp-long v1, p3, v4

    if-ltz v1, :cond_76

    .line 54
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 55
    add-int/lit8 v0, v2, 0x1

    .line 60
    :goto_57
    add-int/lit8 v0, v0, -0x1

    :goto_59
    if-lt v0, v3, :cond_63

    .line 61
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    .line 65
    :cond_63
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 66
    return-wide p3

    :cond_76
    move v0, v2

    goto :goto_57
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 84
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 88
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 91
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/u;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_37

    .line 93
    const-string v0, " ... "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 96
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
