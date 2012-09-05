.class Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;
.super Ljava/lang/Object;
.source "TextToSpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/tts/TextToSpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PassageRequestParams"
.end annotation


# instance fields
.field final passage:I

.field final position:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "passage"
    .parameter "position"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->passage:I

    .line 147
    iput-object p2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->position:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 151
    instance-of v1, p1, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;

    if-eqz v1, :cond_1b

    move-object v0, p1

    .line 152
    check-cast v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;

    .line 153
    .local v0, o:Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;
    iget v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->passage:I

    iget v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->passage:I

    if-ne v1, v2, :cond_19

    iget-object v1, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->position:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->position:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    .line 155
    .end local v0           #o:Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;
    :goto_18
    return v1

    .line 153
    .restart local v0       #o:Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;
    :cond_19
    const/4 v1, 0x0

    goto :goto_18

    .line 155
    .end local v0           #o:Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;
    :cond_1b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_18
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->passage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/books/tts/TextToSpeechController$PassageRequestParams;->position:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
