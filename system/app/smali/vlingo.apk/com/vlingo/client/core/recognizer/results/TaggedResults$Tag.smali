.class public Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
.super Ljava/lang/Object;
.source "TaggedResults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/results/TaggedResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tag"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 473
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->name:Ljava/lang/String;

    .line 474
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;)Lcom/vlingo/client/core/recognizer/results/RecResults;
    .registers 2
    .parameter "x0"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;Lcom/vlingo/client/core/recognizer/results/RecResults;)Lcom/vlingo/client/core/recognizer/results/RecResults;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecResults()Lcom/vlingo/client/core/recognizer/results/RecResults;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n            Tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, rs:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n               UttLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "               PhraseLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-virtual {v3}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getPhraseLevel()[Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, phrase:[Ljava/lang/String;
    if-eqz v1, :cond_69

    .line 483
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4a
    array-length v3, v1

    if-ge v0, v3, :cond_69

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "               "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 487
    .end local v0           #i:I
    :cond_69
    return-object v2
.end method
