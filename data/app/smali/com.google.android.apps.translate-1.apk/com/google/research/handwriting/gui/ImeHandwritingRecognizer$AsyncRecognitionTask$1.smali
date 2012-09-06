.class Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask$1;
.super Ljava/lang/Object;
.source "ImeHandwritingRecognizer.java"

# interfaces
.implements Lcom/google/research/handwriting/base/HandwritingRecognizer$CancelStruct;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->doInBackground([Lcom/google/research/handwriting/base/StrokeList;)Lcom/google/research/handwriting/gui/AsyncTaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;


# direct methods
.method constructor <init>(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;)V
    .registers 2
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask$1;->this$1:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCanceled()Z
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask$1;->this$1:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$AsyncRecognitionTask;->isCancelled()Z

    move-result v0

    return v0
.end method
