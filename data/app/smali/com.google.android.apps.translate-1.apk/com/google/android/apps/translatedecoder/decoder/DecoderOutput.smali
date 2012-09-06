.class public Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;
.super Ljava/lang/Object;
.source "DecoderOutput.java"


# instance fields
.field private cost:D

.field private deTokenizedOutput:Ljava/lang/String;

.field private rawInput:Ljava/lang/String;

.field private tokenizedInput:Ljava/lang/String;

.field private tokenizedOutput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->rawInput:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedInput:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedOutput:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->deTokenizedOutput:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->cost:D

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .registers 9
    .parameter "rawInput"
    .parameter "tokenizedInput"
    .parameter "tokenizedOutput"
    .parameter "deTokenizedOutput"
    .parameter "cost"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->rawInput:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedInput:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedOutput:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->deTokenizedOutput:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->cost:D

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->rawInput:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedInput:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedOutput:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->deTokenizedOutput:Ljava/lang/String;

    .line 32
    iput-wide p5, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->cost:D

    .line 33
    return-void
.end method


# virtual methods
.method public getCost()D
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->cost:D

    return-wide v0
.end method

.method public getDetokenizedOutput()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->deTokenizedOutput:Ljava/lang/String;

    return-object v0
.end method

.method public getRawInput()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->rawInput:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenizedInput()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedInput:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenizedOutput()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedOutput:Ljava/lang/String;

    return-object v0
.end method

.method public setCost(D)V
    .registers 3
    .parameter "cost"

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->cost:D

    .line 73
    return-void
.end method

.method public setDetokenizedOutput(Ljava/lang/String;)V
    .registers 2
    .parameter "deTokenizedOutput"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->deTokenizedOutput:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setRawInput(Ljava/lang/String;)V
    .registers 2
    .parameter "rawInput"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->rawInput:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTokenizedInput(Ljava/lang/String;)V
    .registers 2
    .parameter "tokenizedInput"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedInput:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setTokenizedOutput(Ljava/lang/String;)V
    .registers 2
    .parameter "tokenizedOutput"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/decoder/DecoderOutput;->tokenizedOutput:Ljava/lang/String;

    .line 57
    return-void
.end method
