.class Lorg/simpleframework/xml/core/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Expression;


# instance fields
.field private attribute:Z

.field private attributes:Lorg/simpleframework/xml/core/PathParser$Cache;

.field private builder:Ljava/lang/StringBuilder;

.field private cache:Ljava/lang/String;

.field private count:I

.field private data:[C

.field private elements:Lorg/simpleframework/xml/core/PathParser$Cache;

.field private indexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/lang/String;

.field private names:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private off:I

.field private path:Ljava/lang/String;

.field private prefixes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private start:I

.field private type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    .line 141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;

    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    .line 144
    new-instance v0, Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/PathParser$Cache;-><init>(Lorg/simpleframework/xml/core/PathParser;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/core/PathParser$Cache;

    .line 145
    new-instance v0, Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/PathParser$Cache;-><init>(Lorg/simpleframework/xml/core/PathParser;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/core/PathParser$Cache;

    .line 146
    iput-object p1, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 147
    iput-object p2, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    .line 148
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/PathParser;->parse(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/xml/core/PathParser;)Z
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    return v0
.end method

.method static synthetic access$100(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/simpleframework/xml/core/PathParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/simpleframework/xml/core/PathParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$600(Lorg/simpleframework/xml/core/PathParser;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/simpleframework/xml/core/PathParser;)I
    .registers 2
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    return v0
.end method

.method static synthetic access$800(Lorg/simpleframework/xml/core/PathParser;)I
    .registers 2
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    return v0
.end method

.method static synthetic access$900(Lorg/simpleframework/xml/core/PathParser;)[C
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    return-object v0
.end method

.method private align()V
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 589
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 591
    if-le v0, v1, :cond_18

    .line 592
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 594
    :cond_18
    return-void
.end method

.method private attribute()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 521
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    .line 523
    :cond_9
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v1, v2, :cond_38

    .line 524
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v1, v1, v2

    .line 526
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/PathParser;->isValid(C)Z

    move-result v2

    if-nez v2, :cond_9

    .line 527
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Illegal character \'%s\' in attribute for \'%s\' in %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v3, v5

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v1, v3, v4

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v1, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 530
    :cond_38
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    if-gt v1, v0, :cond_4e

    .line 531
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Attribute reference in \'%s\' for %s is empty"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 533
    :cond_4e
    iput-boolean v4, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    .line 535
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/PathParser;->insert(II)V

    .line 536
    return-void
.end method

.method private build()V
    .registers 8

    .prologue
    .line 425
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 426
    add-int/lit8 v4, v3, -0x1

    .line 428
    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-ge v2, v3, :cond_58

    .line 429
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 432
    if-lez v2, :cond_29

    .line 433
    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    :cond_29
    iget-boolean v5, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-eqz v5, :cond_3f

    if-ne v2, v4, :cond_3f

    .line 436
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :goto_3b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 439
    :cond_3f
    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x5b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 445
    :cond_58
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    .line 446
    return-void
.end method

.method private element()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 491
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    move v0, v1

    .line 494
    :goto_4
    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v4, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v3, v4, :cond_24

    .line 495
    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v3, v3, v4

    .line 497
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/PathParser;->isValid(C)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 498
    const/16 v4, 0x40

    if-ne v3, v4, :cond_28

    .line 499
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    .line 511
    :cond_24
    :goto_24
    invoke-direct {p0, v2, v0}, Lorg/simpleframework/xml/core/PathParser;->insert(II)V

    .line 512
    return-void

    .line 501
    :cond_28
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_30

    .line 502
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->index()V

    goto :goto_24

    .line 504
    :cond_30
    const/16 v4, 0x2f

    if-eq v3, v4, :cond_24

    .line 505
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Illegal character \'%s\' in element for \'%s\' in %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v4, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 509
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    .line 510
    goto :goto_4
.end method

.method private getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 327
    :goto_6
    return-object p2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6
.end method

.method private getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 286
    :goto_6
    return-object p1

    .line 283
    :cond_7
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p1, p2

    .line 284
    goto :goto_6

    .line 286
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method private index()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 546
    .line 548
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_2a

    move v0, v1

    .line 549
    :goto_e
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v2, v3, :cond_2b

    .line 550
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v2, v2, v3

    .line 552
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/PathParser;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 553
    mul-int/lit8 v0, v0, 0xa

    .line 556
    add-int/2addr v0, v2

    .line 557
    add-int/lit8 v0, v0, -0x30

    .line 558
    goto :goto_e

    :cond_2a
    move v0, v1

    .line 560
    :cond_2b
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_4f

    .line 561
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Invalid index for path \'%s\' in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 563
    :cond_4f
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 564
    return-void
.end method

.method private insert(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 669
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 671
    if-lez p2, :cond_c

    .line 672
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->insert(Ljava/lang/String;)V

    .line 674
    :cond_c
    return-void
.end method

.method private insert(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 685
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 686
    const/4 v0, 0x0

    .line 688
    if-lez v1, :cond_14

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 690
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 692
    :cond_14
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 694
    return-void
.end method

.method private isDigit(C)Z
    .registers 3
    .parameter

    .prologue
    .line 618
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 605
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isLetter(C)Z
    .registers 3
    .parameter

    .prologue
    .line 657
    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method private isSpecial(C)Z
    .registers 3
    .parameter

    .prologue
    .line 644
    const/16 v0, 0x5f

    if-eq p1, v0, :cond_c

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isValid(C)Z
    .registers 3
    .parameter

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isSpecial(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private parse(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 387
    if-eqz p1, :cond_16

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    .line 389
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    .line 390
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 392
    :cond_16
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->path()V

    .line 393
    return-void
.end method

.method private path()V
    .registers 7

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 402
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1f

    .line 403
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s references document root"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 405
    :cond_1f
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2c

    .line 406
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->skip()V

    .line 408
    :cond_2c
    :goto_2c
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-ge v0, v1, :cond_4c

    .line 409
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-eqz v0, :cond_48

    .line 410
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s references an invalid attribute"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 412
    :cond_48
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->segment()V

    goto :goto_2c

    .line 414
    :cond_4c
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->truncate()V

    .line 415
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->build()V

    .line 416
    return-void
.end method

.method private segment()V
    .registers 6

    .prologue
    .line 471
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    .line 473
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1f

    .line 474
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Invalid path expression \'%s\' in %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 476
    :cond_1f
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2a

    .line 477
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->attribute()V

    .line 481
    :goto_26
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->align()V

    .line 482
    return-void

    .line 479
    :cond_2a
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->element()V

    goto :goto_26
.end method

.method private skip()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 455
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v0, v0

    if-le v0, v5, :cond_2c

    .line 456
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_26

    .line 457
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s has an illegal syntax"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 459
    :cond_26
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    .line 461
    :cond_2c
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    .line 462
    return-void
.end method

.method private truncate()V
    .registers 3

    .prologue
    .line 574
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v1, v1

    if-lt v0, v1, :cond_10

    .line 575
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    .line 579
    :cond_f
    :goto_f
    return-void

    .line 576
    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_f

    .line 577
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_f
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/PathParser$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    if-nez v0, :cond_17

    .line 303
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_17

    .line 306
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/PathParser$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_17
    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/PathParser$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    if-nez v0, :cond_17

    .line 259
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_17

    .line 262
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/PathParser$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_17
    return-object v0
.end method

.method public getFirst()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLast()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(I)Lorg/simpleframework/xml/core/Expression;
    .registers 3
    .parameter

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/PathParser;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Lorg/simpleframework/xml/core/Expression;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 372
    sub-int v0, v1, p2

    if-lt v0, p1, :cond_13

    .line 373
    new-instance v0, Lorg/simpleframework/xml/core/PathParser$PathSection;

    sub-int/2addr v1, p2

    invoke-direct {v0, p0, p1, v1}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    .line 375
    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lorg/simpleframework/xml/core/PathParser$PathSection;

    invoke-direct {v0, p0, p1, p1}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    goto :goto_12
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPath()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 170
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 704
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    sub-int/2addr v0, v1

    .line 706
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 707
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    .line 709
    :cond_14
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    return-object v0
.end method
