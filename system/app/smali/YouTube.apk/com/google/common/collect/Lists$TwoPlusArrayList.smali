.class Lcom/google/common/collect/Lists$TwoPlusArrayList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final first:Ljava/lang/Object;

.field final rest:[Ljava/lang/Object;

.field final second:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->first:Ljava/lang/Object;

    .line 295
    iput-object p2, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->second:Ljava/lang/Object;

    .line 296
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    .line 297
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_18

    .line 309
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$TwoPlusArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(II)I

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x2

    aget-object v0, v0, v1

    :goto_10
    return-object v0

    .line 304
    :pswitch_11
    iget-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->first:Ljava/lang/Object;

    goto :goto_10

    .line 306
    :pswitch_14
    iget-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->second:Ljava/lang/Object;

    goto :goto_10

    .line 302
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public size()I
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/common/collect/Lists$TwoPlusArrayList;->rest:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
