.class public Lcom/google/research/handwriting/gui/SuggestedWords$Builder;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClickable:Z

.field private final mExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mWords:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mExtras:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mClickable:Z

    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "word"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;)V

    .line 82
    return-void
.end method

.method public addWord(Ljava/lang/CharSequence;Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;)V
    .registers 4
    .parameter "word"
    .parameter "extra"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mExtras:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public addWords(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, extras:Ljava/util/List;,"Ljava/util/List<Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v0, :cond_26

    .line 65
    if-eqz p2, :cond_21

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 66
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    .line 70
    .local v1, extra:Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;
    :goto_15
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v1}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 68
    .end local v1           #extra:Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;
    :cond_21
    invoke-static {}, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->access$000()Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    move-result-object v1

    .restart local v1       #extra:Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;
    goto :goto_15

    .line 72
    .end local v1           #extra:Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;
    :cond_26
    return-void
.end method

.method public build()Lcom/google/research/handwriting/gui/SuggestedWords;
    .registers 6

    .prologue
    .line 114
    new-instance v0, Lcom/google/research/handwriting/gui/SuggestedWords;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mWords:Ljava/util/List;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mExtras:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mClickable:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/research/handwriting/gui/SuggestedWords;-><init>(Ljava/util/List;Ljava/util/List;ZLcom/google/research/handwriting/gui/SuggestedWords$1;)V

    return-object v0
.end method

.method public getWord(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "pos"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setClickable(Z)V
    .registers 2
    .parameter "clickable"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mClickable:Z

    .line 104
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
