.class Lcom/google/common/collect/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final key:Ljava/lang/Object;

.field private final left:Lcom/google/common/collect/bw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final right:Lcom/google/common/collect/bw;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/common/collect/bw;Lcom/google/common/collect/bw;)V
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/common/collect/bw;->key:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lcom/google/common/collect/bw;->left:Lcom/google/common/collect/bw;

    .line 66
    iput-object p3, p0, Lcom/google/common/collect/bw;->right:Lcom/google/common/collect/bw;

    .line 67
    return-void
.end method


# virtual methods
.method public final childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;
    .registers 4
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcom/google/common/collect/bx;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BstSide;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 88
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :pswitch_11
    iget-object v0, p0, Lcom/google/common/collect/bw;->left:Lcom/google/common/collect/bw;

    .line 86
    :goto_13
    return-object v0

    :pswitch_14
    iget-object v0, p0, Lcom/google/common/collect/bw;->right:Lcom/google/common/collect/bw;

    goto :goto_13

    .line 82
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public final getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;
    .registers 4
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 107
    return-object v1

    .line 106
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/bw;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasChild(Lcom/google/common/collect/BstSide;)Z
    .registers 3
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bw;->childOrNull(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final orderingInvariantHolds(Ljava/util/Comparator;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bw;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 118
    sget-object v0, Lcom/google/common/collect/BstSide;->LEFT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/bw;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/collect/bw;->key:Ljava/lang/Object;

    invoke-interface {p1, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3e

    move v0, v1

    :goto_20
    and-int/lit8 v0, v0, 0x1

    .line 120
    :goto_22
    sget-object v3, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v3}, Lcom/google/common/collect/bw;->hasChild(Lcom/google/common/collect/BstSide;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 121
    sget-object v3, Lcom/google/common/collect/BstSide;->RIGHT:Lcom/google/common/collect/BstSide;

    invoke-virtual {p0, v3}, Lcom/google/common/collect/bw;->getChild(Lcom/google/common/collect/BstSide;)Lcom/google/common/collect/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/bw;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/common/collect/bw;->key:Ljava/lang/Object;

    invoke-interface {p1, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_40

    :goto_3c
    and-int/2addr v0, v1

    .line 123
    :cond_3d
    return v0

    :cond_3e
    move v0, v2

    .line 118
    goto :goto_20

    :cond_40
    move v1, v2

    .line 121
    goto :goto_3c

    :cond_42
    move v0, v1

    goto :goto_22
.end method
