.class final Lcom/google/common/collect/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/common/collect/bk;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bw;)J
    .registers 8
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    .line 58
    :goto_2
    if-eqz p3, :cond_2b

    .line 59
    invoke-virtual {p3}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2, p2}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 60
    invoke-interface {p0, p3}, Lcom/google/common/collect/bk;->b(Lcom/google/common/collect/bw;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 61
    invoke-virtual {p3, p2}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 62
    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object p3

    goto :goto_2

    .line 64
    :cond_26
    invoke-virtual {p3, p2}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object p3

    goto :goto_2

    .line 67
    :cond_2b
    return-wide v0
.end method

.method public static a(Lcom/google/common/collect/bk;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bw;)J
    .registers 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 39
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 42
    :cond_e
    const-wide/16 v0, 0x0

    .line 51
    :cond_10
    :goto_10
    return-wide v0

    .line 44
    :cond_11
    invoke-interface {p0, p2}, Lcom/google/common/collect/bk;->a(Lcom/google/common/collect/bw;)J

    move-result-wide v0

    .line 45
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 46
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, v2, p2}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/bk;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bw;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 48
    :cond_22
    invoke-virtual {p1}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 49
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, v2, p2}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/bk;Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bw;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_10
.end method

.method private static a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;
    .registers 9
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    :goto_0
    if-nez p4, :cond_4

    .line 99
    const/4 v0, 0x0

    .line 114
    :goto_3
    return-object v0

    .line 101
    :cond_4
    invoke-virtual {p4}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 102
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    .line 103
    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p4, v0}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 104
    sget-object v2, Lcom/google/common/collect/ce;->a:[I

    invoke-virtual {p3}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_42

    .line 112
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :pswitch_2b
    sget-object v2, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v2, v0}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 114
    :goto_31
    invoke-interface {p1, p2, p4, v1, v0}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    goto :goto_3

    .line 109
    :pswitch_36
    sget-object v2, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v2, v1}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v1

    goto :goto_31

    .line 116
    :cond_3d
    invoke-virtual {p4, p3}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object p4

    goto :goto_0

    .line 104
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_36
    .end packed-switch
.end method

.method public static a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;
    .registers 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    .line 84
    :goto_16
    invoke-virtual {p0}, Lcom/google/common/collect/GeneralRange;->hasLowerBound()Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v1, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/bl;Lcom/google/common/collect/by;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v1

    .line 87
    :cond_22
    invoke-interface {p1, p2, v1, v0}, Lcom/google/common/collect/bl;->a(Lcom/google/common/collect/by;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)Lcom/google/common/collect/bw;

    move-result-object v0

    return-object v0

    :cond_27
    move-object v0, v1

    .line 81
    goto :goto_16
.end method

.method public static a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/cc;Lcom/google/common/collect/bw;)Lcom/google/common/collect/cb;
    .registers 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    if-nez p3, :cond_d

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_c
    return-object v0

    .line 134
    :cond_d
    invoke-interface {p2, p3}, Lcom/google/common/collect/cc;->a(Lcom/google/common/collect/bw;)Lcom/google/common/collect/cb;

    move-result-object v0

    .line 135
    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/cc;Lcom/google/common/collect/cb;)Lcom/google/common/collect/cb;

    move-result-object v0

    goto :goto_c
.end method

.method private static a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/cc;Lcom/google/common/collect/cb;)Lcom/google/common/collect/cb;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 140
    :goto_1
    invoke-virtual {p3}, Lcom/google/common/collect/cb;->b()Lcom/google/common/collect/bw;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 142
    invoke-static {p0, v2, p1}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 143
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/bw;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 144
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    invoke-interface {p2, p3, v1}, Lcom/google/common/collect/cc;->a(Lcom/google/common/collect/cb;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/cb;

    move-result-object p3

    goto :goto_1

    :cond_22
    move-object p3, v0

    .line 156
    :cond_23
    :goto_23
    return-object p3

    .line 149
    :cond_24
    invoke-virtual {v1, p1}, Lcom/google/common/collect/bw;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 150
    invoke-interface {p2, p3, p1}, Lcom/google/common/collect/cc;->a(Lcom/google/common/collect/cb;Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/cb;

    move-result-object v1

    .line 151
    invoke-static {p0, p1, p2, v1}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Lcom/google/common/collect/BstSide;Lcom/google/common/collect/cc;Lcom/google/common/collect/cb;)Lcom/google/common/collect/cb;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_36

    move-object p3, v1

    .line 153
    goto :goto_23

    .line 156
    :cond_36
    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->other()Lcom/google/common/collect/BstSide;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/google/common/collect/cd;->a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z

    move-result v1

    if-eqz v1, :cond_23

    move-object p3, v0

    goto :goto_23
.end method

.method private static a(Lcom/google/common/collect/GeneralRange;Ljava/lang/Object;Lcom/google/common/collect/BstSide;)Z
    .registers 5
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 163
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/google/common/collect/ce;->a:[I

    invoke-virtual {p2}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 170
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 166
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    .line 168
    :goto_18
    return v0

    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/google/common/collect/GeneralRange;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_18

    .line 164
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method
