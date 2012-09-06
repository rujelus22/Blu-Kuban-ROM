.class public Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;
.super Ljava/lang/Object;
.source "ContinuousWritingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/ContinuousWritingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoResult"
.end annotation


# instance fields
.field appendChar:C

.field id:I

.field result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

.field strokes:Lcom/google/research/handwriting/base/StrokeList;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

.field useAppendChar:Z


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/ContinuousWritingHandler;ILcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;ZC)V
    .registers 7
    .parameter
    .parameter "id"
    .parameter "result"
    .parameter "strokes"
    .parameter "useAppendChar"
    .parameter "appendChar"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->this$0:Lcom/google/research/handwriting/gui/ContinuousWritingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p2, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->id:I

    .line 158
    iput-object p3, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->result:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .line 159
    iput-object p4, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 160
    iput-boolean p5, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->useAppendChar:Z

    .line 161
    iput-char p6, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->appendChar:C

    .line 162
    return-void
.end method


# virtual methods
.method public isUseAppendChar()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/ContinuousWritingHandler$RecoResult;->useAppendChar:Z

    return v0
.end method
