.class public Lcom/android/inputmethod/latin/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field private mCapsCount:I

.field private mCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mIsCapitalized:Z

.field private mPreferredWord:Ljava/lang/String;

.field private mTypedWord:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 47
    return-void
.end method


# virtual methods
.method public add(I[I)V
    .registers 5
    .parameter "primaryCode"
    .parameter "codes"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 86
    :cond_18
    return-void
.end method

.method public deleteLast()V
    .registers 5

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 93
    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 94
    .local v1, lastPos:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 95
    .local v0, last:C
    iget-object v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 97
    :cond_2c
    return-void
.end method

.method public getCodesAt(I)[I
    .registers 3
    .parameter "index"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getPreferredWord()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public getTypedWord()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 105
    .local v0, wordSize:I
    if-nez v0, :cond_a

    .line 106
    const/4 v1, 0x0

    .line 117
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    goto :goto_9
.end method

.method public isCapitalized()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 152
    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-le v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsCapitalized:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 57
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 58
    return-void
.end method

.method public setCapitalized(Z)V
    .registers 2
    .parameter "capitalized"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsCapitalized:Z

    .line 122
    return-void
.end method

.method public setPreferredWord(Ljava/lang/String;)V
    .registers 2
    .parameter "preferred"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
