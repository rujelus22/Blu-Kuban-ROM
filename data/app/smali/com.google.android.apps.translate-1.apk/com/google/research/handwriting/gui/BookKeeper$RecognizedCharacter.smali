.class public Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;
.super Ljava/lang/Object;
.source "BookKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/BookKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognizedCharacter"
.end annotation


# instance fields
.field final character:C

.field final request:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;


# direct methods
.method public constructor <init>(CLcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;)V
    .registers 3
    .parameter "character"
    .parameter "result"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-char p1, p0, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;->character:C

    .line 105
    iput-object p2, p0, Lcom/google/research/handwriting/gui/BookKeeper$RecognizedCharacter;->request:Lcom/google/research/handwriting/gui/BookKeeper$RecognitionRequestWithResults;

    .line 106
    return-void
.end method
