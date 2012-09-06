.class public Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.super Ljava/lang/Object;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$2;,
        Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;,
        Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;,
        Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$SendingFeedbackException;,
        Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;,
        Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;,
        Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;,
        Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequest;
    }
.end annotation


# static fields
.field static final AUTHENTICATION_FAILED:Ljava/lang/String; = "Authentication failed"

.field public static final DELETED:Ljava/lang/String; = "\u2205[deleted]"

.field public static final NOT_RECOGNIZED_TOKEN:Ljava/lang/String; = "\u2205[incorrect]"

.field public static final NO_RESULTS_TOKEN:Ljava/lang/String; = "\u2205[no recognition results]"

.field public static final SOCKERR_TIMEOUT_ERROR_STRING:Ljava/lang/String; = "The operation timed out"

.field private static final TAG:Ljava/lang/String; = "ImeHandwritingRecognizer"


# instance fields
.field protected final csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

.field protected currentStroke:Lcom/google/research/handwriting/base/Stroke;

.field private final gestureRecognizer:Lcom/google/research/handwriting/gui/GestureRecognizer;

.field protected imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

.field protected postContext:Ljava/lang/String;

.field protected preContext:Ljava/lang/String;

.field private final recognitionQueue:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;

.field private recognitionRequestId:I

.field private recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

.field protected recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

.field private final runningRecognitionTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;",
            ">;"
        }
    .end annotation
.end field

.field protected final settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

.field protected strokes:Lcom/google/research/handwriting/base/StrokeList;

.field final unsentFeedbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/RecognizerClient;)V
    .registers 3
    .parameter "recognizerHandler"

    .prologue
    .line 668
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    invoke-direct {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;-><init>(Lcom/google/research/handwriting/gui/RecognizerClient;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;)V

    .line 669
    return-void
.end method

.method public constructor <init>(Lcom/google/research/handwriting/gui/RecognizerClient;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;)V
    .registers 6
    .parameter "recognizerHandler"
    .parameter "settings"

    .prologue
    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;)V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionQueue:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->runningRecognitionTasks:Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/StrokeList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->preContext:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->postContext:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    .line 94
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    iget v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    invoke-direct {v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;-><init>(I)V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .line 95
    new-instance v0, Lcom/google/research/handwriting/gui/GestureRecognizer;

    invoke-direct {v0}, Lcom/google/research/handwriting/gui/GestureRecognizer;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->gestureRecognizer:Lcom/google/research/handwriting/gui/GestureRecognizer;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->unsentFeedbacks:Ljava/util/ArrayList;

    .line 678
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    .line 679
    iput-object p2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    .line 680
    new-instance v0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    const-string v1, "handwriting_ime"

    invoke-static {}, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;->getNewHttpClient()Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;-><init>(Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    .line 681
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->setReportEveryN(I)V

    .line 682
    return-void
.end method

.method static synthetic access$100(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    return v0
.end method

.method static synthetic access$304(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->runningRecognitionTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;ILcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->convertResult(ILcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method private cancelAllRunningRecognitionTasks()V
    .registers 4

    .prologue
    .line 771
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->runningRecognitionTasks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 772
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->cancel(Z)Z

    goto :goto_6

    .line 774
    :cond_17
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->runningRecognitionTasks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 775
    return-void
.end method

.method private convertResult(ILcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    .registers 17
    .parameter "id"
    .parameter "rr"
    .parameter "strokes"

    .prologue
    .line 816
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->numResult()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 817
    .local v2, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->numResult()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 818
    .local v3, extra:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v4, completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v5, completionsExtras:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1d
    invoke-virtual {p2}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->numResult()I

    move-result v1

    if-ge v10, v1, :cond_83

    .line 822
    invoke-virtual {p2, v10}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->get(I)Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;

    move-result-object v1

    iget-object v1, v1, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;->word:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {p2, v10}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->get(I)Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;

    move-result-object v1

    iget-object v1, v1, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;->completions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 824
    .local v12, w:Ljava/lang/String;
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    invoke-virtual {p2, v10}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->get(I)Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;

    move-result-object v1

    iget-object v1, v1, Lcom/google/research/handwriting/base/HandwritingRecognizer$ScoredCandidate;->word:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 827
    .end local v12           #w:Ljava/lang/String;
    :cond_4f
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v1}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->useTranslateApi:Z

    if-eqz v1, :cond_80

    move-object v1, p2

    check-cast v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;

    iget-object v1, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;->targetTexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_80

    .line 829
    new-instance v9, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;

    move-object v1, p2

    check-cast v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;

    iget-object v6, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;->sourceText:Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;

    iget-object v1, v1, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$CloudRecognitionResult;->targetTexts:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v9, v6, v1}, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 832
    .local v9, extraInfo:Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;
    invoke-virtual {v9}, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v9           #extraInfo:Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;
    :cond_80
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    .line 835
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_83
    const-string v1, "\u2205[incorrect]"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {p2}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->getDebugInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;->getId()Ljava/lang/String;

    move-result-object v8

    move v1, p1

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;)V

    .line 846
    .local v0, result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    return-object v0
.end method

.method private logVi(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "level"
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iget v0, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->verbosity:I

    if-lt v0, p1, :cond_11

    .line 750
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_11
    return-void
.end method

.method private logVi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .parameter "level"
    .parameter "tag"
    .parameter "message"
    .parameter "e"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iget v0, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->verbosity:I

    if-lt v0, p1, :cond_11

    .line 760
    invoke-static {p2, p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    :cond_11
    return-void
.end method

.method private startRecognition()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 926
    const-string v0, "ImeHandwritingRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recognition_request_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recognition_result.version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I
    invoke-static {v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->access$600(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I
    invoke-static {v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->access$600(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-nez v0, :cond_4d

    .line 930
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    iget v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    const/4 v2, 0x0

    const-string v3, "No recognizer configured. Please go to the settings."

    invoke-interface {v0, v1, v2, v3}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    .line 946
    :goto_4c
    return-void

    .line 934
    :cond_4d
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iget v1, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->writingGuideWidth:I

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iget v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->writingGuideHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/google/research/handwriting/base/StrokeList;->setWritingGuide(II)V

    .line 935
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->preContext:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->postContext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/research/handwriting/base/StrokeList;->setContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    #getter for: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I
    invoke-static {v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->access$600(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v1}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v1

    iget v1, v1, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->maxRequestsInParallel:I

    if-ge v0, v1, :cond_89

    .line 940
    const-string v0, "ImeHandwritingRecognizer"

    const-string v1, "Only few pending requests: starting"

    invoke-direct {p0, v4, v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 941
    iget v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {p0, v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->startRecognitionTask(ILcom/google/research/handwriting/base/StrokeList;)V

    goto :goto_4c

    .line 943
    :cond_89
    const/4 v0, 0x3

    const-string v1, "ImeHandwritingRecognizer"

    const-string v2, "More than enough pending requests, scheduling"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionQueue:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->scheduleRecognition()V
    invoke-static {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->access$1000(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;)V

    goto :goto_4c
.end method


# virtual methods
.method public askTheSecondaryRecognizer()V
    .registers 5

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->hasSecondaryRecognizer()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1143
    :goto_8
    return-void

    .line 1112
    :cond_9
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;

    invoke-direct {v0, p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/research/handwriting/base/StrokeList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8
.end method

.method public cancelStroke()V
    .registers 2

    .prologue
    .line 878
    new-instance v0, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    .line 879
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->startRecognition()V

    .line 880
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 778
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/StrokeList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 779
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iget v1, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->inputType:I

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/base/StrokeList;->setInputType(I)V

    .line 780
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iget v1, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->writingGuideWidth:I

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iget v2, v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->writingGuideHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/google/research/handwriting/base/StrokeList;->setWritingGuide(II)V

    .line 781
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->preContext:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->postContext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/research/handwriting/base/StrokeList;->setContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v0, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    .line 783
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    iget v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    invoke-direct {v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;-><init>(I)V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .line 784
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->cancelAllRunningRecognitionTasks()V

    .line 785
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-eqz v0, :cond_5e

    .line 786
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lang = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v2}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/research/handwriting/gui/RecognizerClient;->setStatusText(Ljava/lang/String;)V

    .line 790
    :goto_5d
    return-void

    .line 788
    :cond_5e
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    const-string v1, "no recognizer"

    invoke-interface {v0, v1}, Lcom/google/research/handwriting/gui/RecognizerClient;->setStatusText(Ljava/lang/String;)V

    goto :goto_5d
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-eqz v0, :cond_d

    .line 861
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    .line 863
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "not set"

    goto :goto_c
.end method

.method public handleException(ILjava/lang/Exception;Ljava/lang/String;)V
    .registers 9
    .parameter "requestId"
    .parameter "exception"
    .parameter "where"

    .prologue
    .line 691
    const/4 v1, 0x1

    const-string v2, "ImeHandwritingRecognizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while request("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 695
    :try_start_23
    throw p2
    :try_end_24
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_23 .. :try_end_24} :catch_24
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_23 .. :try_end_24} :catch_2d
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_23 .. :try_end_24} :catch_47
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_23 .. :try_end_24} :catch_61
    .catch Ljava/net/UnknownHostException; {:try_start_23 .. :try_end_24} :catch_7b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_23 .. :try_end_24} :catch_95
    .catch Ljava/net/SocketTimeoutException; {:try_start_23 .. :try_end_24} :catch_b0
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_24} :catch_cb
    .catch Ljava/net/SocketException; {:try_start_23 .. :try_end_24} :catch_e6
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_24} :catch_101
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_24} :catch_11c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_24} :catch_137
    .catch Ljava/io/InterruptedIOException; {:try_start_23 .. :try_end_24} :catch_152
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_24} :catch_16d

    .line 696
    :catch_24
    move-exception v0

    .line 697
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    const-string v2, ""

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    .line 735
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :goto_2c
    return-void

    .line 698
    :catch_2d
    move-exception v0

    .line 699
    .local v0, e:Lorg/apache/http/NoHttpResponseException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No response from server while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2c

    .line 700
    .end local v0           #e:Lorg/apache/http/NoHttpResponseException;
    :catch_47
    move-exception v0

    .line 701
    .local v0, e:Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conection timed out while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2c

    .line 702
    .end local v0           #e:Lorg/apache/http/conn/ConnectionPoolTimeoutException;
    :catch_61
    move-exception v0

    .line 703
    .local v0, e:Lorg/apache/http/conn/ConnectTimeoutException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection timeout while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2c

    .line 704
    .end local v0           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_7b
    move-exception v0

    .line 705
    .local v0, e:Ljava/net/UnknownHostException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown host while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2c

    .line 706
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_95
    move-exception v0

    .line 707
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Client Protocol Exception while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 708
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_b0
    move-exception v0

    .line 709
    .local v0, e:Ljava/net/SocketTimeoutException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket timeout while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 710
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_cb
    move-exception v0

    .line 711
    .local v0, e:Lorg/json/JSONException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON exception while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 712
    .end local v0           #e:Lorg/json/JSONException;
    :catch_e6
    move-exception v0

    .line 713
    .local v0, e:Ljava/net/SocketException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Socket exception while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 714
    .end local v0           #e:Ljava/net/SocketException;
    :catch_101
    move-exception v0

    .line 717
    .local v0, e:Ljava/lang/ClassCastException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lost authentication while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 718
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_11c
    move-exception v0

    .line 719
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported encoding while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 720
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_137
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 723
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_152
    move-exception v0

    .line 731
    .local v0, e:Ljava/io/InterruptedIOException;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedIOException while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 732
    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catch_16d
    move-exception v0

    .line 733
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unidentified error while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2c
.end method

.method public hasPendingRequests()Z
    .registers 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->runningRecognitionTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_10

    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/Stroke;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public initialize()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 738
    const-string v0, "ImeHandwritingRecognizer"

    const-string v1, "INITIALIZE"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/RecognizerClient;->initializing()V

    .line 740
    invoke-virtual {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->clear()V

    .line 741
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    invoke-interface {v0, v2}, Lcom/google/research/handwriting/gui/RecognizerClient;->onInitialized(Z)V

    .line 742
    return-void
.end method

.method public logFeedback(Ljava/lang/String;Ljava/lang/String;Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;ZLjava/lang/String;)V
    .registers 16
    .parameter "selectedText"
    .parameter "selectionMode"
    .parameter "recoResult"
    .parameter "completion"
    .parameter "debugInfo"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 950
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 951
    invoke-virtual {p3, p5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->setDebugInfo(Ljava/lang/String;)V

    .line 953
    :cond_b
    const-string v1, "ImeHandwritingRecognizer.logFeedback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting logging task: src="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " text="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " nStrokes="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getStrokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " inkHash="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getinkHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " completion="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 957
    move-object v3, p1

    .line 958
    .local v3, recognizedText:Ljava/lang/String;
    const-string v4, ""

    .line 959
    .local v4, completionText:Ljava/lang/String;
    if-eqz p4, :cond_9f

    .line 963
    const/4 v3, 0x0

    .line 964
    const/4 v1, 0x3

    const-string v2, "ImeHandwritingRecognizer.logFeedback"

    const-string v5, "selected a completion"

    invoke-direct {p0, v1, v2, v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 965
    move-object v4, p1

    .line 966
    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getCompletions()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v7

    .line 967
    .local v7, completions:Lcom/google/research/handwriting/gui/SuggestedWords;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_6b
    invoke-virtual {v7}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v1

    if-ge v8, v1, :cond_83

    .line 968
    invoke-virtual {v7, v8}, Lcom/google/research/handwriting/gui/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 969
    invoke-virtual {v7, v8}, Lcom/google/research/handwriting/gui/SuggestedWords;->getExtra(I)Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;->toString()Ljava/lang/String;

    move-result-object v3

    .line 974
    :cond_83
    if-nez v3, :cond_9f

    .line 975
    const-string v1, "ImeHandwritingRecognizer.logFeedback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We are inserting a completion but don\'t know what was recognized:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v3, ""

    .line 981
    .end local v7           #completions:Lcom/google/research/handwriting/gui/SuggestedWords;
    .end local v8           #i:I
    :cond_9f
    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getinkHash()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b5

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getinkHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b5

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable()Z

    move-result v1

    if-nez v1, :cond_f3

    .line 987
    :cond_b5
    const-string v1, "ImeHandwritingRecognizer.logFeedback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logging with ink: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getStrokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 988
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getStrokes()Lcom/google/research/handwriting/base/StrokeList;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getDebugInfo()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    .local v0, logtask:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;
    new-instance v1, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;

    invoke-direct {v1}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;-><init>()V

    new-array v2, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 999
    :goto_ee
    return-void

    .line 967
    .end local v0           #logtask:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;
    .restart local v7       #completions:Lcom/google/research/handwriting/gui/SuggestedWords;
    .restart local v8       #i:I
    :cond_ef
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6b

    .line 993
    .end local v7           #completions:Lcom/google/research/handwriting/gui/SuggestedWords;
    .end local v8           #i:I
    :cond_f3
    const-string v1, "ImeHandwritingRecognizer.logFeedback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logging with hash: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    invoke-virtual {v5}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getInkHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v1, v2}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->logVi(ILjava/lang/String;Ljava/lang/String;)V

    .line 994
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getinkHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getDebugInfo()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    .restart local v0       #logtask:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncLogTask;
    new-instance v1, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;

    invoke-direct {v1}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;-><init>()V

    new-array v2, v9, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_ee
.end method

.method public onPenDown(FFJF)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionQueue:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;

    #calls: Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->cancelRecognitionRequests()V
    invoke-static {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;->access$900(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionRequestQueueHandler;)V

    .line 869
    iget v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    .line 870
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    long-to-float v1, p3

    invoke-virtual {v0, p1, p2, v1, p5}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    .line 871
    return-void
.end method

.method public onPenMove(FFJF)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    long-to-float v1, p3

    invoke-virtual {v0, p1, p2, v1, p5}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    .line 875
    return-void
.end method

.method public onPenUp(FFJF)V
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "time"
    .parameter "pressure"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    long-to-float v1, p3

    invoke-virtual {v0, p1, p2, v1, p5}, Lcom/google/research/handwriting/base/Stroke;->addPoint(FFFF)V

    .line 905
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/base/StrokeList;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v0, Lcom/google/research/handwriting/base/Stroke;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/Stroke;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->currentStroke:Lcom/google/research/handwriting/base/Stroke;

    .line 908
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->gestureRecognizer:Lcom/google/research/handwriting/gui/GestureRecognizer;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iget-boolean v1, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->useBackGesture:Z

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/GestureRecognizer;->setBackspaceGestureEnabled(Z)V

    .line 909
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->gestureRecognizer:Lcom/google/research/handwriting/gui/GestureRecognizer;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iget-boolean v1, v1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->useSpaceGesture:Z

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/GestureRecognizer;->setSpaceGestureEnabled(Z)V

    .line 910
    sget-object v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$2;->$SwitchMap$com$google$research$handwriting$gui$GestureRecognizer$Gesture:[I

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->gestureRecognizer:Lcom/google/research/handwriting/gui/GestureRecognizer;

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/gui/GestureRecognizer;->recognizeLastStrokeGesture(Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/GestureRecognizer$Gesture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 922
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->startRecognition()V

    .line 923
    :goto_3c
    return-void

    .line 912
    :pswitch_3d
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/RecognizerClient;->delete()V

    goto :goto_3c

    .line 915
    :pswitch_43
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    invoke-interface {v0}, Lcom/google/research/handwriting/gui/RecognizerClient;->space()V

    goto :goto_3c

    .line 910
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_43
    .end packed-switch
.end method

.method public recognize(Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    .registers 11
    .parameter "strokes"

    .prologue
    .line 797
    iget v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    add-int/lit8 v1, v6, 0x1

    iput v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognitionRequestId:I

    .line 798
    .local v1, requestId:I
    iget-object v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    iget-object v7, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v7}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->startRecognition(Ljava/lang/String;I)V

    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 800
    .local v4, time:J
    sget-object v2, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .line 802
    .local v2, result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    :try_start_19
    iget-object v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    sget-object v7, Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;->UNCANCELABLE:Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;

    invoke-interface {v6, p1, v7}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->recognize(Lcom/google/research/handwriting/base/StrokeList;Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;)Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;

    move-result-object v3

    .line 804
    .local v3, rr:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
    invoke-direct {p0, v1, v3, p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->convertResult(ILcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    :try_end_24
    .catch Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException; {:try_start_19 .. :try_end_24} :catch_2b

    move-result-object v2

    .line 808
    .end local v3           #rr:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionResult;
    :goto_25
    iget-object v6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    invoke-virtual {v6, v1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->stopRecognition(I)V

    .line 809
    return-object v2

    .line 805
    :catch_2b
    move-exception v0

    .line 806
    .local v0, e:Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;
    const-string v6, "ImeHandwritingRecognizer"

    const-string v7, "Recognition in continuous writing mode failed."

    iget-object v8, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$RecognitionFailedException;->e:Ljava/lang/Exception;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method public recognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;
    .registers 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    return-object v0
.end method

.method public recognizerHasSecondary()Z
    .registers 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->hasSecondaryRecognizer()Z

    move-result v0

    return v0
.end method

.method public setClientName(Ljava/lang/String;)V
    .registers 5
    .parameter "cn"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-nez v0, :cond_5

    .line 1058
    :cond_4
    :goto_4
    return-void

    .line 1054
    :cond_5
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput-object p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->clientName:Ljava/lang/String;

    .line 1055
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->hasSecondaryRecognizer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1056
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSecondaryRecognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_secondary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->clientName:Ljava/lang/String;

    goto :goto_4
.end method

.method public setClientVersion(I)V
    .registers 3
    .parameter "cv"

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-nez v0, :cond_5

    .line 1078
    :cond_4
    :goto_4
    return-void

    .line 1074
    :cond_5
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->clientVersion:I

    .line 1075
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->hasSecondaryRecognizer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1076
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSecondaryRecognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->clientVersion:I

    goto :goto_4
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .registers 3
    .parameter "dn"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-nez v0, :cond_5

    .line 1048
    :cond_4
    :goto_4
    return-void

    .line 1044
    :cond_5
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput-object p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->deviceName:Ljava/lang/String;

    .line 1045
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->hasSecondaryRecognizer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1046
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSecondaryRecognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput-object p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->deviceName:Ljava/lang/String;

    goto :goto_4
.end method

.method public setDeviceVersion(I)V
    .registers 3
    .parameter "dv"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-nez v0, :cond_5

    .line 1068
    :cond_4
    :goto_4
    return-void

    .line 1064
    :cond_5
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->deviceVersion:I

    .line 1065
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->hasSecondaryRecognizer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1066
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSecondaryRecognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->deviceVersion:I

    goto :goto_4
.end method

.method public setInputType(I)V
    .registers 3
    .parameter "t"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0, p1}, Lcom/google/research/handwriting/base/StrokeList;->setInputType(I)V

    .line 1105
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iput p1, v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->inputType:I

    .line 1106
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 5
    .parameter "language"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-eqz v0, :cond_2d

    .line 852
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput-object p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lang = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v2}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/research/handwriting/gui/RecognizerClient;->setStatusText(Ljava/lang/String;)V

    .line 857
    :goto_2c
    return-void

    .line 855
    :cond_2d
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    const-string v1, "no recognizer"

    invoke-interface {v0, v1}, Lcom/google/research/handwriting/gui/RecognizerClient;->setStatusText(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public setPostContext(Ljava/lang/String;)V
    .registers 4
    .parameter "postContext"

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->postContext:Ljava/lang/String;

    .line 1007
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->preContext:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/research/handwriting/base/StrokeList;->setContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    return-void
.end method

.method public setPreContext(Ljava/lang/String;)V
    .registers 4
    .parameter "preContext"

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->preContext:Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->postContext:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/google/research/handwriting/base/StrokeList;->setContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-void
.end method

.method public setRecognizer(Lcom/google/research/handwriting/base/HandwritingRecognizer;)V
    .registers 4
    .parameter "recognizer"

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    .line 1034
    if-eqz p1, :cond_1d

    invoke-interface {p1}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->clientName:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1036
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    invoke-interface {p1}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->clientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->setClientName(Ljava/lang/String;)V

    .line 1038
    :cond_1d
    return-void
.end method

.method public setRecognizerClient(Lcom/google/research/handwriting/gui/RecognizerClient;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->imeEventHandler:Lcom/google/research/handwriting/gui/RecognizerClient;

    .line 794
    return-void
.end method

.method public setVerbosity(I)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-eqz v0, :cond_20

    .line 1096
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->verbosity:I

    .line 1097
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->hasSecondaryRecognizer()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1098
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSecondaryRecognizer()Lcom/google/research/handwriting/base/HandwritingRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iput p1, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->verbosity:I

    .line 1101
    :cond_20
    return-void
.end method

.method public setWritingGuide(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iput p1, v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->writingGuideWidth:I

    .line 1090
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->settings:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;

    iput p2, v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognizerUISettings;->writingGuideHeight:I

    .line 1091
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0, p1, p2}, Lcom/google/research/handwriting/base/StrokeList;->setWritingGuide(II)V

    .line 1092
    return-void
.end method

.method public startRecognitionTask(ILcom/google/research/handwriting/base/StrokeList;)V
    .registers 4
    .parameter "id"
    .parameter "strokes"

    .prologue
    .line 883
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->startRecognitionTask(ILcom/google/research/handwriting/base/StrokeList;Z)V

    .line 884
    return-void
.end method

.method public startRecognitionTask(ILcom/google/research/handwriting/base/StrokeList;Z)V
    .registers 9
    .parameter "id"
    .parameter "strokes"
    .parameter "discardObsoleteRequests"

    .prologue
    const/4 v4, 0x0

    .line 888
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->csi:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;

    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v3}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->language:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->startRecognition(Ljava/lang/String;I)V

    .line 889
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;-><init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;IZ)V

    .line 890
    .local v0, recoTask:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;
    iget-object v2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->runningRecognitionTasks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 892
    new-instance v1, Lcom/google/research/handwriting/base/StrokeList;

    invoke-direct {v1, p2, v4}, Lcom/google/research/handwriting/base/StrokeList;-><init>(Lcom/google/research/handwriting/base/StrokeList;Z)V

    .line 893
    .local v1, strokesCopy:Lcom/google/research/handwriting/base/StrokeList;
    new-instance v2, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;

    invoke-direct {v2}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/research/handwriting/base/StrokeList;

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 898
    return-void
.end method

.method public strokes()Lcom/google/research/handwriting/base/StrokeList;
    .registers 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    return-object v0
.end method

.method public usesTranslateApi()Z
    .registers 2

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    if-eqz v0, :cond_d

    .line 1082
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;->recognizer:Lcom/google/research/handwriting/base/HandwritingRecognizer;

    invoke-interface {v0}, Lcom/google/research/handwriting/base/HandwritingRecognizer;->getSettings()Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/research/handwriting/base/HandwritingRecognizer$HandwritingRecognizerSettings;->useTranslateApi:Z

    .line 1084
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
