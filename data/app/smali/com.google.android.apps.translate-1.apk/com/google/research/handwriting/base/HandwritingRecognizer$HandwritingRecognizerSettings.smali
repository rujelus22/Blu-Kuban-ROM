.class public Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;
.super Ljava/lang/Object;
.source "HandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/base/HandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandwritingRecognizerSettings"
.end annotation


# instance fields
.field public clientName:Ljava/lang/String;

.field public clientVersion:I

.field public deviceName:Ljava/lang/String;

.field public deviceVersion:I

.field public language:Ljava/lang/String;

.field public maxRequestsInParallel:I

.field public targetLanguage:Ljava/lang/String;

.field public timeoutBeforeNextRequest:I

.field public useSpaces:Z

.field public useTranslateApi:Z

.field public verbosity:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "en"

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    .line 31
    const-string v0, "unset"

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->clientName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->useTranslateApi:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->targetLanguage:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)V
    .registers 3
    .parameter "spec"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "en"

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    .line 31
    const-string v0, "unset"

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->clientName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->useTranslateApi:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->targetLanguage:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getVerbosity()I

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->verbosity:I

    .line 49
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getMaximalParallelRequests()I

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->maxRequestsInParallel:I

    .line 50
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getTimeoutBeforeNextRequest()I

    move-result v0

    iput v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->timeoutBeforeNextRequest:I

    .line 51
    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->getUseSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->useSpaces:Z

    .line 52
    return-void
.end method
