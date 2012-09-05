.class Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;
.super Ljava/lang/Object;
.source "TextToSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/tts/TextToSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhraseSearchResult"
.end annotation


# instance fields
.field final phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

.field final reason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 706
    invoke-direct {p0, v0, v0}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    .line 707
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;)V
    .registers 3
    .parameter "phrase"

    .prologue
    .line 696
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    .line 697
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
    .registers 3
    .parameter "phrase"
    .parameter "reason"

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->phrase:Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;

    .line 703
    iput-object p2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;->reason:Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;

    .line 704
    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseSearchResult;-><init>(Lcom/google/android/apps/books/tts/TextToSpeechController$PhraseIdentifier;Lcom/google/android/apps/books/tts/TextToSpeechController$StopReason;)V

    .line 700
    return-void
.end method
