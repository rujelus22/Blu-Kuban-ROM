.class Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
.super Ljava/lang/Object;
.source "TextToSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/tts/TextToSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UtteranceKey"
.end annotation


# instance fields
.field final phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

.field final sequenceNumber:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;I)V
    .registers 3
    .parameter "phrase"
    .parameter "sequenceNumber"

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 307
    iput p2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->sequenceNumber:I

    .line 308
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 317
    instance-of v1, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 318
    check-cast v0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;

    .line 319
    .local v0, o:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->sequenceNumber:I

    iget v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->sequenceNumber:I

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    iget-object v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    .line 321
    .end local v0           #o:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
    :goto_18
    return v1

    .line 319
    .restart local v0       #o:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
    :cond_19
    const/4 v1, 0x0

    goto :goto_18

    .line 321
    .end local v0           #o:Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;
    :cond_1b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_18
.end method

.method getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    invoke-virtual {v1}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$UtteranceKey;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
