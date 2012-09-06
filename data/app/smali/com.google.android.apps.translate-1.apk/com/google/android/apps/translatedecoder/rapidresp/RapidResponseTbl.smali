.class public Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;
.super Ljava/lang/Object;
.source "RapidResponseTbl.java"


# instance fields
.field private final dominateCost:D

.field private final rapidRespPT:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translatedecoder/pt/PhraseTable;D)V
    .registers 4
    .parameter "rapidRespPT"
    .parameter "dominateCost"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;->rapidRespPT:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    .line 29
    iput-wide p2, p0, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;->dominateCost:D

    .line 30
    return-void
.end method

.method private getPhraseType(Lcom/google/android/apps/translatedecoder/pt/PhrasePair;)Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;
    .registers 6
    .parameter "phrase"

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->cost()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_d

    .line 73
    sget-object v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    .line 75
    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->ANTI_DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    goto :goto_c
.end method


# virtual methods
.method public filterPhrases([ILjava/util/List;)Ljava/util/List;
    .registers 11
    .parameter "srcWords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translatedecoder/pt/PhrasePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, regularPhrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    iget-object v6, p0, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;->rapidRespPT:Lcom/google/android/apps/translatedecoder/pt/PhraseTable;

    invoke-virtual {v6, p1}, Lcom/google/android/apps/translatedecoder/pt/PhraseTable;->getPhrases([I)Ljava/util/List;

    move-result-object v3

    .line 38
    .local v3, rapidRespPhrases:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_10

    :cond_e
    move-object v5, p2

    .line 66
    :cond_f
    :goto_f
    return-object v5

    .line 42
    :cond_10
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v5, res:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translatedecoder/pt/PhrasePair;>;"
    if-eqz p2, :cond_1a

    .line 44
    invoke-interface {v5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    .line 47
    .local v2, rapidPhrase:Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    invoke-direct {p0, v2}, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;->getPhraseType(Lcom/google/android/apps/translatedecoder/pt/PhrasePair;)Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    if-ne v6, v7, :cond_3e

    .line 48
    iget-wide v6, p0, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;->dominateCost:D

    invoke-virtual {v2, v6, v7}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->setCost(D)V

    .line 50
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 51
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 53
    :cond_3e
    invoke-direct {p0, v2}, Lcom/google/android/apps/translatedecoder/rapidresp/RapidResponseTbl;->getPhraseType(Lcom/google/android/apps/translatedecoder/pt/PhrasePair;)Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;->ANTI_DOMINATING_PHRASE:Lcom/google/android/apps/translatedecoder/rapidresp/PhraseType;

    if-ne v6, v7, :cond_1e

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_47
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1e

    .line 56
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;

    .line 57
    .local v4, regular:Lcom/google/android/apps/translatedecoder/pt/PhrasePair;
    invoke-virtual {v4}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->tgtWords()[I

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/apps/translatedecoder/pt/PhrasePair;->tgtWords()[I

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 58
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    .line 55
    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_47
.end method
