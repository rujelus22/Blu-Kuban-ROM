.class Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;
.super Ljava/lang/Object;
.source "UIHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/UIHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultsAndCompletions"
.end annotation


# instance fields
.field public final completions:Lcom/google/research/handwriting/gui/SuggestedWords;

.field public final results:Lcom/google/research/handwriting/gui/SuggestedWords;

.field final synthetic this$0:Lcom/google/research/handwriting/gui/UIHandler;


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/UIHandler;Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V
    .registers 4
    .parameter
    .parameter "r"
    .parameter "c"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->this$0:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->results:Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 114
    iput-object p3, p0, Lcom/google/research/handwriting/gui/UIHandler$ResultsAndCompletions;->completions:Lcom/google/research/handwriting/gui/SuggestedWords;

    .line 115
    return-void
.end method
