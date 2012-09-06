.class final Lcom/google/common/collect/Lists$StringAsImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field hash:I

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 609
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 546
    iput-object p1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    .line 547
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/Lists$StringAsImmutableList;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 590
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_7

    move v0, v1

    .line 606
    :goto_6
    return v0

    .line 593
    :cond_7
    check-cast p1, Ljava/util/List;

    .line 594
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 595
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v3, v0, :cond_17

    move v0, v1

    .line 596
    goto :goto_6

    .line 598
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    .line 599
    :goto_1c
    if-ge v2, v3, :cond_3a

    .line 600
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 601
    instance-of v5, v0, Ljava/lang/Character;

    if-eqz v5, :cond_34

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    iget-object v5, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_36

    :cond_34
    move v0, v1

    .line 603
    goto :goto_6

    .line 599
    :cond_36
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c

    .line 606
    :cond_3a
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public final get(I)Ljava/lang/Character;
    .registers 3
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 612
    iget v1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 613
    if-nez v1, :cond_1c

    .line 614
    const/4 v1, 0x1

    .line 615
    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 616
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 618
    :cond_1a
    iput v1, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->hash:I

    .line 620
    :cond_1c
    return v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 554
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 559
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public final listIterator(I)Lcom/google/common/collect/mu;
    .registers 4
    .parameter

    .prologue
    .line 565
    new-instance v0, Lcom/google/common/collect/fo;

    invoke-virtual {p0}, Lcom/google/common/collect/Lists$StringAsImmutableList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/fo;-><init>(Lcom/google/common/collect/Lists$StringAsImmutableList;II)V

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$StringAsImmutableList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/common/collect/Lists$StringAsImmutableList;->string:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Lists$StringAsImmutableList;

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Lists$StringAsImmutableList;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Lists$StringAsImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
