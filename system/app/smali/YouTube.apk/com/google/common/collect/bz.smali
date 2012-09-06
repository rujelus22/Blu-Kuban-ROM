.class final Lcom/google/common/collect/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bw;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 168
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bw;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/bz;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/common/collect/bt;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;

    move-result-object v0

    .line 172
    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {p0}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/common/collect/BstModificationResult;->b(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/google/common/collect/bt;->a(Ljava/lang/Object;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/bt;

    move-result-object v0

    goto :goto_21
.end method

.method public static a(Ljava/util/Comparator;Lcom/google/common/collect/bv;Lcom/google/common/collect/bw;Ljava/lang/Object;)Lcom/google/common/collect/bt;
    .registers 12
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    if-eqz p2, :cond_2f

    .line 75
    invoke-virtual {p2}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 76
    if-eqz v0, :cond_2f

    .line 77
    if-gez v0, :cond_2c

    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    .line 78
    :goto_17
    invoke-virtual {p2, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-static {p0, p1, v1, p3}, Lcom/google/common/collect/bz;->a(Ljava/util/Comparator;Lcom/google/common/collect/bv;Lcom/google/common/collect/bw;Ljava/lang/Object;)Lcom/google/common/collect/bt;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/google/common/collect/bv;->c()Lcom/google/common/collect/by;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/collect/bv;->b()Lcom/google/common/collect/bl;

    move-result-object v3

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/common/collect/bt;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;

    move-result-object v0

    .line 84
    :goto_2b
    return-object v0

    .line 77
    :cond_2c
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    goto :goto_17

    .line 84
    :cond_2f
    invoke-virtual {p1}, Lcom/google/common/collect/bv;->b()Lcom/google/common/collect/bl;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/bv;->c()Lcom/google/common/collect/by;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/common/collect/bv;->a()Lcom/google/common/collect/bs;

    move-result-object v2

    if-nez p2, :cond_65

    move-object v0, v1

    :goto_3e
    invoke-interface {v2, p3, v0}, Lcom/google/common/collect/bs;->a(Ljava/lang/Object;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v5

    if-eqz p2, :cond_9f

    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v2

    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    :goto_50
    sget-object v6, Lcom/google/common/collect/ca;->a:[I

    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->c()Lcom/google/common/collect/BstModificationResult$ModificationType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/BstModificationResult$ModificationType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_a2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_65
    invoke-virtual {v4, p2, v1, v1}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_3e

    :pswitch_6a
    move-object v1, p2

    :cond_6b
    :goto_6b
    invoke-static {p3, p2, v1, v5}, Lcom/google/common/collect/bt;->a(Ljava/lang/Object;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/bt;

    move-result-object v0

    goto :goto_2b

    :pswitch_70
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->b()Lcom/google/common/collect/bw;

    move-result-object v3

    if-eqz v3, :cond_7f

    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->b()Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-virtual {v4, v1, v2, v0}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v1

    goto :goto_6b

    :cond_7f
    if-eqz p2, :cond_6b

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Modification result is a REBUILDING_CHANGE, but rebalancing required"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_89
    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->b()Lcom/google/common/collect/bw;

    move-result-object v6

    if-eqz v6, :cond_98

    invoke-virtual {v5}, Lcom/google/common/collect/BstModificationResult;->b()Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-interface {v3, v4, v1, v2, v0}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v1

    goto :goto_6b

    :cond_98
    if-eqz p2, :cond_6b

    invoke-interface {v3, v4, v2, v0}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v1

    goto :goto_6b

    :cond_9f
    move-object v0, v1

    move-object v2, v1

    goto :goto_50

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_70
        :pswitch_89
    .end packed-switch
.end method

.method public static a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bw;
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    if-nez p0, :cond_11

    .line 204
    invoke-virtual {p2, p1, v0, v0}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 206
    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/common/collect/bz;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bw;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-interface {p3, p2, p0, v0, v1}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Ljava/util/Comparator;Lcom/google/common/collect/bw;Ljava/lang/Object;)Lcom/google/common/collect/bw;
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    :goto_0
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    if-nez p1, :cond_7

    .line 44
    const/4 p1, 0x0

    .line 48
    :cond_6
    return-object p1

    .line 46
    :cond_7
    invoke-virtual {p1}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 47
    if-eqz v0, :cond_6

    .line 50
    if-gez v0, :cond_1a

    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    .line 51
    :goto_15
    invoke-virtual {p1, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_1a
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    goto :goto_15
.end method

.method public static b(Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bw;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 186
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bw;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/bz;->b(Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/google/common/collect/bt;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bt;

    move-result-object v0

    .line 190
    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {p0}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/common/collect/BstModificationResult;->b(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/BstModificationResult;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/google/common/collect/bt;->a(Ljava/lang/Object;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/BstModificationResult;)Lcom/google/common/collect/bt;

    move-result-object v0

    goto :goto_21
.end method

.method public static b(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bw;
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    if-nez p0, :cond_11

    .line 222
    invoke-virtual {p2, p1, v0, v0}, Lcom/google/common/collect/by;->a(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 224
    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/google/common/collect/bz;->b(Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/by;Lcom/google/common/collect/bl;)Lcom/google/common/collect/bw;

    move-result-object v1

    invoke-interface {p3, p2, p0, v0, v1}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_10
.end method
