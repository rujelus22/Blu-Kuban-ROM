.class public Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
.super Ljava/lang/Object;
.source "TaggedResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/results/TaggedResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseGroup"
.end annotation


# instance fields
.field private final confidence:F

.field private final parseType:Ljava/lang/String;

.field private final tags:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(FLjava/lang/String;I)V
    .registers 5
    .parameter "confidence"
    .parameter "parseType"
    .parameter "num"

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput p1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->confidence:F

    .line 392
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->parseType:Ljava/lang/String;

    .line 393
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    .line 394
    return-void
.end method

.method synthetic constructor <init>(FLjava/lang/String;ILcom/vlingo/client/core/recognizer/results/TaggedResults$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 384
    invoke-direct {p0, p1, p2, p3}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;-><init>(FLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->parseType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 384
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->confidence:F

    return v0
.end method


# virtual methods
.method public getConfidence()F
    .registers 2

    .prologue
    .line 416
    iget v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->confidence:F

    return v0
.end method

.method public getNumTags()I
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParseType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->parseType:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    return-object v0
.end method

.method public isTagsEmpty()Z
    .registers 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public lookupTagByName(Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    .registers 6
    .parameter "name"

    .prologue
    .line 451
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_2b

    .line 452
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 453
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    if-ge v0, v1, :cond_2b

    .line 454
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    .line 455
    .local v2, tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    invoke-virtual {v2}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 460
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    :goto_27
    return-object v2

    .line 453
    .restart local v0       #i:I
    .restart local v1       #size:I
    .restart local v2       #tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 460
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    :cond_2b
    const/4 v2, 0x0

    goto :goto_27
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n         ParseGroup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->confidence:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->parseType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, rs:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    if-eqz v4, :cond_65

    .line 400
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 401
    .local v2, size:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n            Tags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    const/4 v0, 0x0

    .local v0, i:I
    :goto_43
    if-ge v0, v2, :cond_78

    .line 403
    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    .line 404
    .local v3, tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 407
    .end local v0           #i:I
    .end local v2           #size:I
    .end local v3           #tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    :cond_78
    return-object v1
.end method
