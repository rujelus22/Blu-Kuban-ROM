.class public Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
.super Ljava/lang/Object;
.source "TextToSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/tts/TextToSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhraseIdentifier"
.end annotation


# instance fields
.field final passageIndex:I

.field final phraseIndex:I

.field final unit:Lcom/google/android/apps/books/tts/TtsUnit;


# direct methods
.method constructor <init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V
    .registers 5
    .parameter "passageIndex"
    .parameter "unit"
    .parameter "phraseIndex"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    if-ltz p1, :cond_10

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 230
    iput p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    .line 231
    iput-object p2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    .line 232
    iput p3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    .line 233
    return-void

    .line 229
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public advance()Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    .registers 5

    .prologue
    .line 285
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    iget v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 254
    instance-of v1, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    if-eqz v1, :cond_1d

    move-object v0, p1

    .line 255
    check-cast v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 256
    .local v0, o:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    iget v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    iget-object v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    if-ne v1, v2, :cond_1b

    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    iget v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x1

    .line 259
    .end local v0           #o:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    :goto_1a
    return v1

    .line 256
    .restart local v0       #o:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a

    .line 259
    .end local v0           #o:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    :cond_1d
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1a
.end method

.method getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rewind()Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;
    .registers 5

    .prologue
    .line 268
    iget v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    if-eqz v0, :cond_13

    .line 270
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    iget v3, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    move-object p0, v0

    .line 276
    .end local p0
    :cond_12
    :goto_12
    return-object p0

    .line 271
    .restart local p0
    :cond_13
    iget v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->phraseIndex:I

    if-nez v0, :cond_12

    iget v0, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    if-lez v0, :cond_12

    .line 273
    new-instance v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->passageIndex:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->unit:Lcom/google/android/apps/books/tts/TtsUnit;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;-><init>(ILcom/google/android/apps/books/tts/TtsUnit;I)V

    move-object p0, v0

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
