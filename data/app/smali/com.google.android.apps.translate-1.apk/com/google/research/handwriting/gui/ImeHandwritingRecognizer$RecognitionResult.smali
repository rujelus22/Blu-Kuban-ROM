.class public Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
.super Ljava/lang/Object;
.source "ImeHandwritingRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecognitionResult"
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;


# instance fields
.field private clickable:Z

.field private final completions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final completionsExtra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private debugInfo:Ljava/lang/String;

.field private final extra:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private inkHash:Ljava/lang/String;

.field private requestId:I

.field private final resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

.field private validResult:Z

.field private final words:Ljava/util/List;
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
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 188
    new-instance v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult$1;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult$1;-><init>(I)V

    sput-object v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "requestId"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    .line 145
    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/StrokeList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 305
    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable:Z

    .line 175
    iput p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    .line 176
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;)V
    .registers 13
    .parameter "requestId"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "timings"
    .parameter "strokesToRecognize"
    .parameter "inkHash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/research/handwriting/base/StrokeList;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p3, extra:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p4, completions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p5, completionsExtra:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    .line 145
    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/StrokeList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 305
    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z

    .line 308
    iput-boolean v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable:Z

    .line 238
    iput p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    .line 239
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    iput-object p6, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/StrokeList;->clear()V

    .line 249
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0, p7}, Lcom/google/research/handwriting/base/StrokeList;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {p7}, Lcom/google/research/handwriting/base/StrokeList;->getWritingGuideWidth()I

    move-result v1

    invoke-virtual {p7}, Lcom/google/research/handwriting/base/StrokeList;->getWritingGuideHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/research/handwriting/base/StrokeList;->setWritingGuide(II)V

    .line 252
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {p7}, Lcom/google/research/handwriting/base/StrokeList;->getInputType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/base/StrokeList;->setInputType(I)V

    .line 253
    iput-object p8, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    .line 254
    iput-boolean v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z

    .line 255
    return-void
.end method

.method public constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)V
    .registers 5
    .parameter "src"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    .line 145
    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/google/research/handwriting/base/StrokeList;

    invoke-direct {v0}, Lcom/google/research/handwriting/base/StrokeList;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 305
    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable:Z

    .line 263
    iget v0, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    iput v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    .line 264
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    iget-object v0, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/base/StrokeList;->addAll(Ljava/util/Collection;)Z

    .line 270
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v1}, Lcom/google/research/handwriting/base/StrokeList;->getWritingGuideWidth()I

    move-result v1

    iget-object v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/StrokeList;->getWritingGuideHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/research/handwriting/base/StrokeList;->setWritingGuide(II)V

    .line 272
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v1}, Lcom/google/research/handwriting/base/StrokeList;->getInputType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/base/StrokeList;->setInputType(I)V

    .line 273
    iget-object v0, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    .line 274
    iget-boolean v0, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z

    .line 275
    return-void
.end method

.method static synthetic access$600(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    .prologue
    .line 361
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 363
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/StrokeList;->clear()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 365
    monitor-exit p0

    return-void

    .line 361
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clickable()Z
    .registers 2

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable:Z

    return v0
.end method

.method public getCompletions()Lcom/google/research/handwriting/gui/SuggestedWords;
    .registers 7

    .prologue
    .line 386
    new-instance v0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;-><init>()V

    .line 387
    .local v0, builder:Lcom/google/research/handwriting/gui/SuggestedWords$Builder;
    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 388
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v1, :cond_29

    .line 389
    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v5, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {v5, v4}, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v5}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;)V

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 391
    :cond_29
    iget-boolean v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable:Z

    invoke-virtual {v0, v3}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->setClickable(Z)V

    .line 392
    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->build()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v3

    return-object v3
.end method

.method public declared-synchronized getDebugInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInkHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    return-object v0
.end method

.method getRequestId()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    return v0
.end method

.method public declared-synchronized getStrokes()Lcom/google/research/handwriting/base/StrokeList;
    .registers 2

    .prologue
    .line 281
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords()Lcom/google/research/handwriting/gui/SuggestedWords;
    .registers 7

    .prologue
    .line 372
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;-><init>()V

    .line 373
    .local v0, builder:Lcom/google/research/handwriting/gui/SuggestedWords$Builder;
    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 374
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v1, :cond_41

    .line 375
    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_32

    .line 376
    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v5, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    iget-object v4, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {v5, v4}, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3, v5}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;)V

    .line 374
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 378
    :cond_32
    iget-object v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)V
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3e

    goto :goto_2f

    .line 372
    .end local v0           #builder:Lcom/google/research/handwriting/gui/SuggestedWords$Builder;
    .end local v1           #count:I
    .end local v2           #i:I
    :catchall_3e
    move-exception v3

    monitor-exit p0

    throw v3

    .line 381
    .restart local v0       #builder:Lcom/google/research/handwriting/gui/SuggestedWords$Builder;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_41
    :try_start_41
    iget-boolean v3, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable:Z

    invoke-virtual {v0, v3}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->setClickable(Z)V

    .line 382
    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords$Builder;->build()Lcom/google/research/handwriting/gui/SuggestedWords;
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3e

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getinkHash()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z

    return v0
.end method

.method public setClickable(Z)V
    .registers 2
    .parameter "clickable"

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable:Z

    .line 321
    return-void
.end method

.method public declared-synchronized setDebugInfo(Ljava/lang/String;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 298
    monitor-exit p0

    return-void

    .line 297
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStrokes(Lcom/google/research/handwriting/base/StrokeList;)V
    .registers 3
    .parameter "strokes"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0}, Lcom/google/research/handwriting/base/StrokeList;->clear()V

    .line 286
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v0, p1}, Lcom/google/research/handwriting/base/StrokeList;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 287
    monitor-exit p0

    return-void

    .line 285
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " strokes.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v1}, Lcom/google/research/handwriting/base/StrokeList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " best word = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Z)Z
    .registers 7
    .parameter "fromServer"
    .parameter "clickable"

    .prologue
    const/4 v0, 0x1

    .line 332
    iget v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    iget v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    if-ge v1, v2, :cond_70

    .line 333
    iget v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    iput v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->requestId:I

    .line 334
    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->debugInfo:Ljava/lang/String;

    .line 335
    iget-object v1, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->inkHash:Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 337
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    iget-object v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->words:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 339
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    iget-object v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->extra:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 340
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 341
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    iget-object v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 343
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    iget-object v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->completionsExtra:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v1}, Lcom/google/research/handwriting/base/StrokeList;->clear()V

    .line 345
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/base/StrokeList;->addAll(Ljava/util/Collection;)Z

    .line 346
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/StrokeList;->getWritingGuideWidth()I

    move-result v2

    iget-object v3, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v3}, Lcom/google/research/handwriting/base/StrokeList;->getWritingGuideHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/research/handwriting/base/StrokeList;->setWritingGuide(II)V

    .line 348
    iget-object v1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    iget-object v2, p1, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->resultStrokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/StrokeList;->getInputType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/base/StrokeList;->setInputType(I)V

    .line 349
    iput-boolean p2, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->clickable:Z

    .line 350
    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->validResult:Z

    .line 353
    :goto_6f
    return v0

    :cond_70
    const/4 v0, 0x0

    goto :goto_6f
.end method
