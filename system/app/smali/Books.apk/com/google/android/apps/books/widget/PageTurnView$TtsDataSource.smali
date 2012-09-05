.class Lcom/google/android/apps/books/widget/PageTurnView$TtsDataSource;
.super Ljava/lang/Object;
.source "PageTurnView.java"

# interfaces
.implements Lcom/google/android/apps/books/tts/TextToSpeechController$DataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsDataSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 2
    .parameter

    .prologue
    .line 2232
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsDataSource;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2232
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$TtsDataSource;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    return-void
.end method


# virtual methods
.method public isPassageForbidden(I)Z
    .registers 3
    .parameter "passageIndex"

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsDataSource;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2300(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->isPassageForbidden(I)Z

    move-result v0

    return v0
.end method

.method public requestPassageText(ILjava/lang/String;)I
    .registers 4
    .parameter "passageIndex"
    .parameter "position"

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$TtsDataSource;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$2300(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/render/ReaderRenderer;->requestPassageText(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
