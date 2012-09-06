.class public Lcom/android/inputmethod/latin/SuggestedWords$Builder;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHasMinimalSuggestion:Z

.field private mIsPunctuationSuggestions:Z

.field private mSuggestedWordInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedWordValid:Z

.field private mWords:Ljava/util/List;
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
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    .line 95
    return-void
.end method

.method private addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 4
    .parameter "word"
    .parameter "suggestedWordInfo"

    .prologue
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_10
    return-object p0
.end method


# virtual methods
.method public addTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 10
    .parameter "typedWord"
    .parameter "previousSuggestions"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 158
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 159
    iget-object v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v0, alreadySeen:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 162
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p2}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v3

    .line 164
    .local v3, previousSize:I
    const/4 v1, 0x1

    .local v1, pos:I
    :goto_20
    if-lt v1, v3, :cond_27

    .line 172
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    .line 173
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    .line 174
    return-object p0

    .line 165
    :cond_27
    invoke-virtual {p2, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, prevWord:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 168
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v6, v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 169
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method

.method public addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 4
    .parameter "word"

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 6
    .parameter "word"
    .parameter "debugString"
    .parameter "isPreviousSuggestedWord"

    .prologue
    .line 119
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>(Ljava/lang/CharSequence;Z)V

    .line 120
    .local v0, info:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v1

    return-object v1
.end method

.method public addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
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
            "Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;",
            ">;)",
            "Lcom/android/inputmethod/latin/SuggestedWords$Builder;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, suggestedWordInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-lt v1, v0, :cond_8

    .line 110
    return-object p0

    .line 101
    :cond_8
    const/4 v2, 0x0

    .line 102
    .local v2, suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    if-eqz p2, :cond_11

    .line 103
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    check-cast v2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .line 105
    .restart local v2       #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_11
    if-nez v2, :cond_18

    .line 106
    new-instance v2, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    .end local v2           #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    invoke-direct {v2}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;-><init>()V

    .line 108
    .restart local v2       #suggestedWordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    :cond_18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public build()Lcom/android/inputmethod/latin/SuggestedWords;
    .registers 8

    .prologue
    .line 178
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    .line 179
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mIsPunctuationSuggestions:Z

    iget-object v5, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mSuggestedWordInfoList:Ljava/util/List;

    .line 178
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/latin/SuggestedWords;-><init>(Ljava/util/List;ZZZLjava/util/List;Lcom/android/inputmethod/latin/SuggestedWords;)V

    return-object v0
.end method

.method public getWord(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "pos"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 6
    .parameter "infos"

    .prologue
    .line 133
    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_5

    .line 136
    return-object p0

    .line 133
    :cond_5
    aget-object v0, p1, v1

    .line 134
    .local v0, info:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 133
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 2
    .parameter "hasMinimalSuggestion"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    .line 146
    return-object p0
.end method

.method public setIsPunctuationSuggestions()Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mIsPunctuationSuggestions:Z

    .line 151
    return-object p0
.end method

.method public setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .registers 2
    .parameter "typedWordValid"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    .line 141
    return-object p0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StringBuilder: mTypedWordValid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mTypedWordValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; mHasMinimalSuggestion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mHasMinimalSuggestion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 195
    const-string v3, " ; mIsPunctuationSuggestions = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mIsPunctuationSuggestions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    const-string v3, " --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->mWords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_45

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    :cond_45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 198
    .local v0, s:Ljava/lang/CharSequence;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 199
    const-string v3, " ; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a
.end method
